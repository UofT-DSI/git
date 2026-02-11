# Resolving Merge Conflicts

## Setup: Clone the Team Playlist Repository

```bash
git clone https://github.com/gvwilson/team-playlist.git
cd team-playlist-demo
```

---

## Part 1: View the Branches

### See all available branches
```bash
# List all branches (including remote branches)
git branch -a
```

You should see:
- `main` (your current branch)
- `remotes/origin/Max-song-change`
- `remotes/origin/Em-song-change`

### View the current playlist
```bash
cat playlist.txt
```

This is the original playlist that both Max and Em will modify.

---

## Part 2: Merge Max's Changes (No Conflict)

### Merge Max's branch into main
```bash
# Merge Max's changes
git merge origin/Max-song-change
```

✅ **Success!** This merge works smoothly.

### View what changed
```bash
cat playlist.txt
```

Notice how the playlist has been updated with Max's song choice.

---

## Part 3: Merge Em's Changes (Conflict!)

### Try to merge Em's branch
```bash
# Try to merge Em's changes
git merge origin/Em-song-change
```

💥 **CONFLICT!** Git displays an error message:
```
Auto-merging playlist.txt
CONFLICT (content): Merge conflict in playlist.txt
Automatic merge failed; fix conflicts and then commit the result.
```

**What happened?** Both Max and Em edited the same line. Git doesn't know which version to keep!

---

## Part 4: Understand the Conflict

### Check the status
```bash
git status
```

Shows: `both modified: playlist.txt` - This file needs your help!

### View the conflicted file
```bash
cat playlist.txt
```

**What you'll see:**
```
<<<<<<< HEAD
Song 5: Blinding Lights - The Weeknd
Last updated: Tuesday by Max
=======
Song 5: Levitating - Dua Lipa
Last updated: Tuesday by Em
>>>>>>> origin/Em-song-change
```

**Understanding conflict markers:**
- `<<<<<<< HEAD` - Current version (Max's change, already in main)
- `=======` - Separator between the two versions
- `>>>>>>> origin/Em-song-change` - Incoming version (Em's change)

---

## Part 5: Resolve the Conflict

### Edit the file to resolve
Open `playlist.txt` in your text editor and choose ONE of these options:

**Option 1: Keep Max's version**
```
Song 5: Blinding Lights - The Weeknd
Last updated: Tuesday by Max
```

**Option 2: Keep Em's version**
```
Song 5: Levitating - Dua Lipa
Last updated: Tuesday by Em
```

**Option 3: Keep both songs!**
```
Song 5: Blinding Lights - The Weeknd
Song 6: Levitating - Dua Lipa

Total songs: 6
Last updated: Tuesday by Team
```

**Important:** Delete ALL conflict markers (`<<<<<<<`, `=======`, `>>>>>>>`)

---

## Part 6: Complete the Merge

### Mark the conflict as resolved
```bash
# Stage the resolved file
git add playlist.txt

# Check status - should say "all conflicts fixed"
git status
```

### Commit the merge
```bash
# Complete the merge with a commit
git commit -m "Merge Em-song-change: resolved playlist conflict"
```

### View the merge in history
```bash
# See the merge commit in the history graph
git log --oneline --graph --all
```

You should see both branches merge together into main!

---

## Quick Reference

| Command | What It Does |
|---------|-------------|
| `git branch -a` | List all branches (local and remote) |
| `git merge origin/branch-name` | Merge a remote branch into current branch |
| `git status` | Check which files have conflicts |
| `cat filename` | View the conflicted file |
| `git add filename` | Mark conflict as resolved |
| `git commit` | Complete the merge |
| `git merge --abort` | Cancel the merge and start over |
| `git log --oneline --graph --all` | View branch history |

---

## Key Takeaways

✓ **Conflicts are normal** - They happen when two people edit the same lines

✓ **Git asks for help** - It can't (and shouldn't!) decide which version to keep

✓ **You make the choice** - Keep one, keep both, or write something new

✓ **The process:**
1. Git stops with a conflict message
2. You view the conflict with `cat` or open the file
3. You edit the file manually
4. You remove conflict markers
5. You `git add` the file
6. You `git commit` to finish

✓ **Don't panic!** - Your work is safe. Both versions are shown in the file.

---

## Common Mistakes to Avoid

❌ **Forgetting to remove conflict markers** - Make sure you delete `<<<<<<<`, `=======`, and `>>>>>>>`

❌ **Not staging the file** - You must `git add` before you can commit

❌ **Committing without resolving** - Make sure all conflicts are fixed first (check `git status`)

---

## What Just Happened?

**The Story:**
1. Max made changes to the playlist and pushed them
2. Em made different changes to the same song and pushed them
3. You merged Max's changes first - no problem! ✓
4. When you tried to merge Em's changes, Git found a conflict
5. You decided how to resolve it (that's teamwork!)
6. Now both Max and Em's work is in the main branch

**Real-world parallel:** This is exactly what happens in data science projects when two team members edit the same script, notebook, or configuration file!
