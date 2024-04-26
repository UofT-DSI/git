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
Hello world
7. Using the git command line, add this file to staging, then commit the file to your repository with a suitable commit message.
    * `git add <filename>` then `git commit`

git add README.md
git commit README.md

8. Write a suitable commit message and finalize your commit
Create a new README file

git commit -m "this is my commit msg "


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

git push githomework1

6. Include your repository URL in your submission

### Task 3
1. Create a new branch called `playing-with-bash`
git branch -c playing-with-bash

3. Create 5 empty files with the names up to you
touch file1.txt file2.txt file3.txt file4.txt file5.txt

5. Use `echo` into the 5 empty files a few sentences about anything
echo "ers" > file1.txt
echo "Hfsdf" > file2.txt
echo "dsf" > file3.txt
echo "dfse" > file4.txt
echo "dfefsdgr" > file5.txt

7. Stage, commit and push your work on GitHub
git add .
git commit -m "Added content to 5 files"
git push origin playing-with-bash

9. Open up a pull request
git remote add origin https://github.com/Ygong63/githomework1.git
git branch -M main
git push -u origin main

### Submission

1. When you are done, please commit your changes, and push it to GitHub.
2. Open up a pull request and add your Learning Support Person as a reviewer. You may need to add them to your repository.
