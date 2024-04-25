# Git Homework 1

## Tasks
### Task 1
1. Create a new directory named `githomework1`.
mkdir githomework1

3. Initialize an empty git repository with `git init`.
cd githomework1
git init

5. Using your choice of text editor, create a README.md file.
touch README.md
code README.md

7. Using the git command line, add this file to staging, then commit the file to your repository with a suitable commit message.
    * `git add <filename>` then `git commit`
git add README.md
$ git status
On branch main
Your branch is ahead of 'origin/main' by 1 commit.   
  (use "git push" to publish your local commits)     

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in 
working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
(base) 
      
8. Write a suitable commit message and finalize your commit
Create a new README file
$ git commit -m "this is my commit msg "
On branch main
Your branch is ahead of 'origin/main' by 1 commit.   
  (use "git push" to publish your local commits)     

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in 
working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
(base) 

10. 📸 Take a screenshot of your terminal output

11. ![image](https://github.com/Ygong63/git/assets/166828612/97139615-8900-495c-8dd3-23fce6196037)

12. Show the commit history
    * `git log`
13. 📸 Take a screenshot of your terminal output
$ git log
commit baf5bd22e88bbfc75be66eb47ab755b24b1d2384 (HEAD -> main)
Author: Yixi Grace Gong <ygong63@users.noreply.github.com>
Date:   Thu Apr 25 16:12:22 2024 -0400

    Added nameUsing your choice of text editor, create a README.md file.

commit df5e36609c7257923873eb29de34060c463fa3d7 (origin/main, origin/HEAD)
Author: curtissfnorman <151059094+curtissfnorman@users.noreply.github.com>
Date:   Tue Apr 23 15:39:10 2024 -0400

    Update README.md

commit bc72313d3783e3b7582b9e461500c347b99d3bf2      
Merge: 8c9ccd9 eb738af
Author: curtissfnorman <151059094+curtissfnorman@users.noreply.github.com>
:
### Task 2
1. Create a new public repository on GitHub
https://github.com/Ygong63/githomework1
   
3. Add your GitHub repository as a remote for your local `githomework1` repository
    * `git remote add origin <url>`
  
git clone https://github.com/Ygong63/githomework1

4. Push your local `githomework1` repository to GitHub
5. Include your repository URL in your submission

### Task 3
1. Create a new branch called `playing-with-bash`
2. Create 5 empty files with the names up to you
3. Use `echo` into the 5 empty files a few sentences about anything
4. Stage, commit and push your work on GitHub
5. Open up a pull request

### Submission

1. When you are done, please commit your changes, and push it to GitHub.
2. Open up a pull request and add your Learning Support Person as a reviewer. You may need to add them to your repository.
