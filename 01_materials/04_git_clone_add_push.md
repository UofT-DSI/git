# Introduction to Git - Making changes

## 3. Fork a Repository

**Note:** Forking is done on GitHub through the web interface, not the terminal.

1. Go to the repository on GitHub
2. Click the "Fork" button in the top-right corner
3. This creates a copy of the repository under your GitHub account

Think of a fork as "a clone, but on GitHub" - it's your own copy of someone else's project.

---

## Situate yourself in the terminal
```bash
pwd
ls
git status
```

**Stop and consider:** Are we in the correct working directory to continue?

---

## 4. Making changes

### 4.1 Update your remotes

We only have permissions to make changes to our own fork.

Let's rename the instructor repo to `upstream`, meaning where we get our changes from.
Then set our fork as the `origin`.

```bash
git remote mv origin upstream
git remote -v
git remote add origin https://github.com/[your-username]/recipe-book.git
git remote -v
```

### 4.2 Pull the latest changes

```bash
git pull upstream main
```

### 4.3 Create a New Branch

Create a new branch and checkout
```bash
git branch [your-name]-recipe
git checkout [your-name]-recipe
```

Verify which branch you're on:
```bash
git status
```

### 4.4 Add Some Commits

Create a folder with your name:
```bash
cd community-recipes
```

Situate yourself:
```bash
ls
pwd
```

**Stop and consider:** Are you in the right directory?

Create your own recipe inside your folder:
```bash
code [your-name]-recipe.md
```

Check the status of your changes:
```bash
git status
```

Stage all your changes (add all changes to staging area):
```bash
git add -A
```

Commit your changes:
```bash
git commit -m "Add my recipe"
```

➡️ Add more changes and commit again.

#### Multiverse Analogy 🌌

Think of branches as parallel universes:
- Your branch has the folders and files you created
- Other people's branches have *their* folders and files
- These exist in separate "multiverses" until merged
- Files in your branch don't exist in someone else's branch!


### 4.5 Push Your Branch

Push your branch to GitHub (upload your snapshots):
```bash
git push origin [your-name]-recipe
```

Remember we set our own forks as the origin.

If you get an error message here, check your remotes using:
```bash
git remote -v
```

### 4.6 View Commits on GitHub

1. Go to your repository on GitHub
2. Click on the "Commits" link
3. Click on individual commits to see diffs (what changed)
4. Notice how GitHub highlights additions (green) and deletions (red)

### 4.7 Create a Pull Request

**On GitHub (web interface):**
1. Go to your repository
2. Click "Pull requests" tab
3. Click "New pull request"
4. Select your branch to merge into `main`
5. Click "Create pull request"
6. Add a title and description
7. Click "Create pull request" again

This asks the project maintainers to review and merge your changes.

---

## 5. Pull to See Everybody's Changes

Switch back to the main branch:
```bash
git checkout main
```

Pull the latest changes from GitHub:
```bash
git pull origin main
```

This downloads everyone's merged changes to your local machine.

View the updated history:
```bash
git log --oneline --graph --all
```

List all files to see everyone's contributions:
```bash
ls
```

---

## Quick Reference - Essential Commands

| Command | Purpose |
|---------|---------|
| `git clone <url>` | Copy a repository from GitHub |
| `git status` | See what's changed |
| `git log --oneline` | View commit history |
| `git checkout -b <branch>` | Create and switch to new branch |
| `git add .` | Stage all changes |
| `git commit -m "message"` | Save a snapshot |
| `git push origin <branch>` | Upload to GitHub |
| `git pull origin main` | Download latest changes |
| `git branch` | See all branches |

---

## Helpful Tips

- Always check which branch you're on: `git branch`
- Always pull before starting new work: `git pull`
- Commit early and often with clear messages
- Use descriptive branch names: `jane-data-analysis` not just `feature`
- When in doubt, `pwd`, `ls`, and `git status` tells you what's happening
