---
marp: true
theme: dsi_certificates_theme
style: |
    section {
        font-family: Inter, -apple-system, BlinkMacSystemFont, 'Helvetica Neue', sans-serif;
    }
    .two-col {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 28px;
        align-items: start;
    }
    .three-col {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        gap: 18px;
        align-items: stretch;
    }
    .box {
        border: 2px solid #ddd;
        border-radius: 14px;
        padding: 18px;
        background: #fafafa;
    }
    .center {
        text-align: center;
    }
    .big {
        font-size: 1.25em;
    }
    .small {
        font-size: 0.78em;
    }
paginate: true
---

# Git: First Workflow

```bash
$ fork
$ git clone
```

From project history → local work → shared GitHub copies

---

## Where We Are in the Module

| Session | Focus | Big idea |
|---|---|---|
| Unix Shell | Files and folders | Work with project files from the command line |
| Local Git | Version control | Save meaningful checkpoints in project history |
| GitHub | Remote sharing | Share, collaborate, and showcase work online |

Today we connect **Git on your computer** with **GitHub online**.

---

## Learning Goals

By the end of this section, you should be able to explain:

1. What Git is for
2. What **modified**, **staged**, and **committed** mean
3. What **local** and **remote** repositories are
4. The difference between **clone** and **fork**
5. How to fork a GitHub repo and clone your fork

---

## What Is Git For?

Git is a tool for tracking project history.

It helps us answer questions like:

- What changed?
- When did it change?
- Why did it change?
- Who changed it?
- Can I go back to an earlier version?

---

## Analogy: Git as a Project Archive

Imagine you are working on a research project.

You do not want 20 files named:

```text
analysis_final.R
analysis_final_revised.R
analysis_final_revised_REAL_FINAL.R
```

Instead, Git lets you keep **one project folder** with a clear history of saved checkpoints.

---

## Git in One Sentence

<div class="center big">
Git lets you save labeled checkpoints as your project changes.
</div>

<br>

Each checkpoint is called a **commit**.

A commit is like a saved snapshot of your project at a meaningful moment.

---

## The Three States

Git uses three important states for files:

| State | Meaning |
|---|---|
| Modified | You changed the file, but Git has not saved it yet |
| Staged | You selected the change for the next commit |
| Committed | Git saved the change in project history |

---

## Analogy: Desk → Tray → Archive

<div class="three-col">
<div class="box center">

### Desk

You are actively editing papers.

**Modified**

</div>
<div class="box center">

### Review Tray

You choose what is ready to save.

**Staged**

</div>
<div class="box center">

### Archive

You store a labeled snapshot.

**Committed**

</div>
</div>

---

## The Local Git Workflow

```text
Modified              Staged               Committed
on your desk   →   in review tray   →   in archive
```

```bash
# edit files

git status      # what changed?
git add file    # choose this file for the next checkpoint
git commit -m "message"   # save the checkpoint
```

Important: `git add` does **not** save history yet.

It prepares changes for the next commit.

---

## What Does `git status` Do?

`git status` is your checklist.

It tells you:

- which files changed
- which changes are staged
- which changes are not staged
- whether your working tree is clean

```bash
git status
```

Use it often.

---

## What Are Local and Remote Repositories?

A Git project can have more than one copy.

| Copy | Where it lives | Analogy |
|---|---|---|
| Local repository | Your computer | Your personal archive |
| Remote repository | GitHub | Shared online archive |

A commit is local first.

GitHub sees it only after you **push**.

---

## Local and Remote: Visual

```text
Your computer                         GitHub

┌──────────────────┐                  ┌──────────────────┐
│ Local repository │                  │ Remote repository│
│                  │                  │                  │
│ commits          │  git push  ───▶  │ shared commits   │
│ files            │  git pull  ◀───  │ online backup    │
└──────────────────┘                  └──────────────────┘
```

`push` sends your commits up.  
`pull` brings remote commits down.

---

## What Is GitHub?

GitHub is a website that hosts Git repositories online.

It is commonly used for:

- backing up projects online
- collaborating with other people
- reviewing code and changes
- submitting assignments
- building a public portfolio

Git and GitHub are related, but they are not the same thing.

---

## Clone vs Fork

Both are ways to copy a repository, but they copy it to different places.

| Action | What it creates | Where |
|---|---|---|
| Clone | A local copy | Your computer |
| Fork | Your own remote copy | Your GitHub account |

In this activity, we will usually **fork first**, then **clone our fork**.

---

## Clone: Visual

```text
GitHub original repo
UofT-DSI/git
        │
        │ git clone
        ▼
Your computer
local copy of UofT-DSI/git
```

Cloning downloads a repository to your computer.

But it does **not** create your own copy on GitHub.

---

## Fork: Visual

```text
GitHub original repo                 Your GitHub account
UofT-DSI/git          fork           YOUR-USERNAME/git
┌──────────────┐  ─────────────▶    ┌──────────────┐
│ original     │                    │ your copy    │
│ remote repo  │                    │ remote repo  │
└──────────────┘                    └──────────────┘
```

Forking creates your own GitHub copy of someone else's repository.

---

## Fork + Clone: Visual

```text
1. Fork on GitHub

UofT-DSI/git  ─────────────▶  YOUR-USERNAME/git

2. Clone your fork

YOUR-USERNAME/git  ─────────▶  your computer
```

After this, you can work locally and push changes to **your fork**.

---

## Why Fork for This Exercise?

We do not want everyone pushing changes to the original course repository.

Forking gives each learner:

- their own remote copy
- permission to push to their own copy
- a safe place to practice
- a visible GitHub project they can revisit later

---

# Code Along

Fork and clone the course repository.

---

## Step 1: Open the Course Repository

Open this page in your browser:

```text
https://github.com/UofT-DSI/git
```

Make sure you are signed in to GitHub.

Then click **Fork**.

---

## Step 2: Create Your Fork

On the fork page:

1. Keep the owner as your GitHub account
2. Keep the repository name as `git`
3. Add a description if you want
4. Click **Create fork**

You should now be on a page like:

```text
https://github.com/YOUR-USERNAME/git
```

---

## Step 3: Copy the Clone URL

On your forked repository:

1. Click the green **Code** button
2. Select **HTTPS**
3. Copy the URL

It should look like:

```text
https://github.com/YOUR-USERNAME/git.git
```

---

## Step 4: Clone Your Fork

In your terminal, move to the folder where you keep class work.

Then run:

```bash
git clone https://github.com/YOUR-USERNAME/git.git
```

Replace `YOUR-USERNAME` with your GitHub username.

---

## Step 5: Enter the Repository

```bash
cd git
```

Check where you are:

```bash
pwd
ls
```

Then ask Git what it sees:

```bash
git status
```

---

## Step 6: Check the Remote Connection

```bash
git remote -v
```

You should see something like:

```text
origin  https://github.com/YOUR-USERNAME/git.git (fetch)
origin  https://github.com/YOUR-USERNAME/git.git (push)
```

`origin` is the default name for the remote repository you cloned from.

---

## Stop and Check

Can you answer these questions?

1. Where is the original repository?
2. Where is your fork?
3. Where is your local clone?
4. What does `origin` point to?
5. Why did we fork before cloning?

---

## Common Mistakes

| Problem | What to check |
|---|---|
| Cloned the original repo | Did your URL include your username? |
| Cannot push later | Did you clone your fork or the original? |
| Cannot find the folder | Did you run `cd git`? |
| Not signed in | Are you signed in to GitHub before forking? |
| Wrong folder | Run `pwd` and `ls` to orient yourself |

---

## Key Takeaways

- Git tracks project history with commits.
- Files move from **modified** → **staged** → **committed**.
- Local repositories live on your computer.
- Remote repositories live online, often on GitHub.
- Clone copies a repo to your computer.
- Fork creates your own GitHub copy.
- In this class: **fork first, then clone your fork**.

---

## References

- Pro Git book: https://git-scm.com/book/en/v2
- UofT-DSI Git repository: https://github.com/UofT-DSI/git
