# 🧠 Git Commands Cheatsheet (with Inline Comments)

## 🔧 Configuration

```bash
git --help                                      # Show overview of Git commands
git config --global user.name "Simeon"          # Set your Git username globally
git config --global user.email "me@simeon.dev"  # Set your Git email globally
git config list --global                        # List global Git configuration settings
git config --global core.editor "code --wait"   # Set VS Code as default Git editor
```

---

## 🔑 Credential Manager

```bash
git credential-manager github list        # List GitHub credentials currently used
git credential-manager github login       # Authenticate and store GitHub credentials
```

---

## 📁 Repositories

```bash
git init                                  # Initialize a new Git repository in the current folder
git init -b main                          # Initialize with 'main' as the default branch

git clone <repository_url>               # Clone an existing repository
git clone <repository_url> <new_dir>     # Clone and rename the directory
```

---

## 📝 Tracking Files

```bash
git status                                # Show current changes and staging info
touch README.md                           # Create a new file named README.md
git add <file_name>                       # Stage a specific file
git add -A                                # Stage all modified and new files
```

---

## ✅ Committing

```bash
git commit -m "Your message"              # Commit staged changes with a short message
git commit                                # Open editor to write a full commit message
```

---

## 🌐 Remotes

```bash
git remote -v                             # View remote repository URLs
git remote add origin <url>               # Add a remote named 'origin'
git remote show origin                    # Show detailed info about 'origin'
git remote add upstream <url>             # Add a remote for upstream (main project repo)
git remote rm origin                      # Remove a remote called 'origin'
```

---

## 🔁 Syncing Changes

```bash
git fetch origin                          # Download latest changes from 'origin' (no merge)
git pull origin <branch>                  # Fetch + merge updates from a remote branch
git pull --no-rebase origin <branch>      # Fetch + merge without rebasing to preserve the commit history
git pull upstream main                    # Pull latest changes from upstream main branch
git push origin <branch>                  # Push your local branch to 'origin'
git push -u origin main                   # Push and set upstream tracking for main
```

---

## 🌿 Branching

`git branch` performs branch admin tasks (eg. list, delete)  
`git switch` switches your current working directory to different branches

Git provides multiple ways to perform similar actions, and your choice of command strategy will end up being a mix of personal preference and standard practices in your team.

```bash
git branch -v                             # List all local branches with last commit
git branch -a                             # List all branches (local + remote)
git branch <branch_name>                  # Create a new branch from the current commit
git branch -d <branch_name>               # Delete a local branch

git switch <branch_name>                  # Switch to an existing branch
git switch -c <branch_name>               # Create a new branch from the current commit and switch to it
git switch -c <branch_name> <commit_id>   # Create a new branch from a specified commit and switch to it
```

---

## 🔄 Merging & Conflicts

```bash
git merge <branch_name>                   # Merge specified branch into current one
# If conflicts occur:
# <<<<<<<, =======, >>>>>>> markers will show in affected files
# Manually edit and fix conflicts, then:
git add <file_name>                       # Stage the resolved file
git commit                                # Commit the merge resolution
```

---

## 🚀 Branching Workflow

```bash
git switch -c feature-branch              # Create and switch to a new branch
# Make code changes
git add -A                                # Stage all new and modified files
git commit -m "Feature updates"           # Commit with a clear message
git push origin feature-branch            # Push new branch to remote
```

---

## 📤 Uploading Changes to GitHub

**Initial Setup:**
```bash
# Fork the repo on GitHub
git clone <repo_url>                      # Clone forked repo to local
```

**Making Changes:**
```bash
git switch -c <new_branch>                # Create and switch to a feature branch
# Edit files
git status                                # Check what's modified
git add -A                                # Stage all changes
git commit                                # Commit changes
git push origin <branch>                  # Push feature branch to GitHub
```

---

## ❌ Undoing Mistakes

### 🔄 Accidental PR Merge

> On GitHub:
1. Click **"Revert"** on the merged PR  
2. Merge the auto-created `revert-1-<branch>` PR  
3. Click "Revert" again on the revert-PR  
4. Leave the final "revert of a revert" PR open as the actual submission


### ⛔ Undoing an accidental push to GitHub

**⚠️ The commands shown here should be used with caution.**

#### Important caveats
* Generally, anything uploaded to the internet should be considered to have been made public permanently.
  * If you accidentally uploaded a password or other credentials, those should be revoked immediately.
* It is considered bad practice to change Git history. These commands should only be used in very specific circumstances.

#### Steps
* Optionally, backup your current latest commit that was accidentally pushed
    * `git switch -c backup-branch`
* Ensure your local branch is at the correct commit that should be uploaded
    * Use `git log` to find the commit ID you want to revert a branch to
* Revert your local branch to the correct commit
    * `git switch -C [branch name] [commit id]` to overwrite the branch, and set it to the specified commit ID
* Overwrite the GitHub repository with the updated branch
    * `git push origin [branch name] --force`
