<!-- Note to self: This is for the Scaling to Production course -->

# Git Homework 2

## Short answer
1. What makes a good Git commit message? Write your answer in the Google Doc

## Tasks
The `DSI/git_homework-2` repository contains a short Python script that 
loads the TTC Bus Delay dataset, computes the average delay by route, then 
plots the average delay as a histogram.

1. Clone this repository: https://github.com/dtxe/DSI_git_assignment
    * `git clone`

### Task 1
Unfortunately, this code has a bug that would prevent it from working.
Fortunately, the bug has been fixed in the `bugfix1` branch. We will
get this code working by merging the fixes.

1. Check the current status and commit history
    * `git status` and `git log`
2. Merge the `bugfix1` branch into the main branch
3. 📸 Take a screenshot of your terminal output

### Task 2
We've also been working on an additional feature in a separate branch.
This allows us to aggregate the data by any arbitrary column in the DataFrame, not just the route.

Let's merge this feature in.

1. Merge the `feature1` branch into the main branch.
2. 📸 Take a screenshot of your terminal output

### Task 3
Uh oh! It looks like there's a merge conflict between the bugfix and the new feature!

1. Resolve the merge conflict in your choice of editor
    * We suggest using VSCode!
2. Complete the merge after fixing the conflict.
3. 📸 Take a screenshot of your terminal output
4. Copy and paste the new Analyze.py file into the Google Doc


## Submission
* Submit your screenshots and the contents of the new Analyze.py file in a Google Doc inside your submission folder
