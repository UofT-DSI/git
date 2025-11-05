#!/bin/bash

# This script extends the recipe-book repository from git_03_repo_setup_script.sh
# It adds a community-recipes directory and a GitHub Actions workflow to
# automatically approve and merge pull requests that add recipes to the
# community-recipes directory, provided they are text files without executable
# permissions or shebangs.


# Create community-recipes directory
mkdir -p community-recipes

# Create a placeholder file to ensure the directory is tracked by git
cat > community-recipes/.gitkeep << 'EOF'
# This directory is for community-contributed recipes
# Submit your recipes as .txt files via pull request
EOF

# Create .github/workflows directory
mkdir -p .github/workflows

# Create the GitHub Actions workflow file
cat > .github/workflows/auto-merge-community-recipes.yml << 'EOF'
# .github/workflows/auto-merge-community-recipes.yml
#
# This workflow validates pull requests for community recipes and,
# if all checks pass, approves and auto-merges them.
#
# Prerequisites:
# 1. Enable "Allow auto-merge" in repository settings (under "Pull Requests")
# 2. For protected branches, this workflow provides the required approval
#
name: Auto-Approve and Merge Community Recipes

on:
  pull_request:
    types: [opened, synchronize] # Runs on PR creation and updates

# Grant the workflow token permissions
permissions:
  pull-requests: write # To approve and merge PRs
  contents: write      # To merge PRs

jobs:
  validate-approve-merge:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v4
        with:
          # Fetch full history to diff between base and head
          fetch-depth: 0

      - name: Validate changed files
        id: validate
        run: |
          #!/bin/bash
          set -e # Exit immediately if a command fails

          # --- CONFIGURATION ---
          ALLOWED_SUBDIRECTORY="community-recipes"
          # --- END CONFIGURATION ---

          echo "Validating files for auto-approval and merge..."
          echo "Allowed Subdirectory: $ALLOWED_SUBDIRECTORY"

          # Ensure path has a trailing slash for correct prefix matching
          if [[ "$ALLOWED_SUBDIRECTORY" != */ ]]; then
            ALLOWED_SUBDIRECTORY="$ALLOWED_SUBDIRECTORY/"
          fi

          # Get the base and head commit SHAs from the pull request event
          BASE_SHA=${{ github.event.pull_request.base.sha }}
          HEAD_SHA=${{ github.event.pull_request.head.sha }}
          
          echo "Base SHA: $BASE_SHA"
          echo "Head SHA: $HEAD_SHA"

          # Get the list of all files that differ between the two commits
          CHANGED_FILES=$(git diff-tree --no-commit-id --name-only -r "$BASE_SHA" "$HEAD_SHA")

          if [ -z "$CHANGED_FILES" ]; then
              echo "No file changes detected. Skipping."
              exit 0
          fi

          echo "---"
          echo "Changed files:"
          echo "$CHANGED_FILES"
          echo "---"

          # Loop through each changed file and check it
          while IFS= read -r file; do
              echo "Checking file: $file"

              # 1. Path Check: Is the file within the allowed subdirectory?
              if [[ ! "$file" == "$ALLOWED_SUBDIRECTORY"* ]]; then
                  echo "::error file=$file::File is outside the allowed subdirectory '$ALLOWED_SUBDIRECTORY'."
                  exit 1
              fi
              echo "  ✅ Path check passed."

              # If the file was deleted, it passed the path check, and we don't
              # need to check its contents (it doesn't exist at HEAD).
              if [ ! -f "$file" ]; then
                  echo "  File was deleted. Path check is sufficient."
                  continue
              fi

              # 2. Extension Check: Is it '.txt' or has no extension?
              filename=$(basename -- "$file")
              if [[ "$filename" == *.* ]]; then
                  # File has an extension
                  extension="${filename##*.}"
                  if [[ "$extension" != "txt" ]]; then
                      echo "::error file=$file::Invalid file extension '.$extension'. Only '.txt' or no extension allowed."
                      exit 1
                  fi
                  echo "  ✅ Extension check passed (.txt)."
              else
                  # File has no extension
                  echo "  ✅ Extension check passed (no extension)."
              fi

              # 3. Executable Check: Is the file non-executable?
              if [ -x "$file" ]; then
                  echo "::error file=$file::File is executable."
                  exit 1
              fi
              echo "  ✅ Executable check passed."

              # 4. Shebang Check: Does the file NOT start with '#!'?
              # Read the first 2 bytes. Add '|| true' to prevent failure on empty files.
              first_two_bytes=$(head -c 2 "$file" || true)
              if [[ "$first_two_bytes" == "#!" ]]; then
                  echo "::error file=$file::File contains a shebang."
                  exit 1
              fi
              echo "  ✅ Shebang check passed."

          done <<< "$CHANGED_FILES"

          echo "---"
          echo "All checks passed. Proceeding to approve and merge."

      - name: Approve Pull Request
        if: success()
        run: gh pr review --approve "$PR_URL"
        env:
          PR_URL: ${{ github.event.pull_request.html_url }}
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}

      - name: Enable Auto-Merge
        if: success()
        run: gh pr merge --auto --squash "$PR_URL"
        env:
          PR_URL: ${{ github.event.pull_request.html_url }}
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
EOF

# Stage and commit everything
git add community-recipes/ .github/
git commit -m "Add community-recipes directory and auto-merge workflow"

echo "✅ Setup complete!"
echo ""
echo "Created:"
echo "  - community-recipes/ directory"
echo "  - .github/workflows/auto-merge-community-recipes.yml"
echo ""
echo "Next steps:"
echo "1. Push changes to remote: git push"
echo "2. Enable 'Allow auto-merge' in repository settings:"
echo "   Settings → General → Pull Requests → Allow auto-merge"
