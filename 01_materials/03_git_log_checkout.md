# Introduction to Git - Going backwards and forwards in time

---

## Situate yourself in the terminal
```bash
pwd
ls
```

**Stop and consider:** Are we in the correct working directory to continue?

---

## 2. Clone a Repository

Clone an existing repository from GitHub:
```bash
git clone https://github.com/simeon-demo/recipe-book.git
```

Navigate into the cloned repository:
```bash
cd recipe-book
```

### 2.1 View History

See the commit history:
```bash
git log
```

See a visual branch graph:
```bash
git log --oneline --graph --all
```

### 2.2 Go Backwards and Forwards in Time

Check out a specific commit (use commit hash from `git log`):
```bash
git checkout <commit-hash>
```

Return to the latest version:
```bash
git checkout main
```
