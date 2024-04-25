# Git Assignment - yevheniia.shabalova

a. What is an issue?

Issie - is an item that can be created to plan, discuss and track work.

b. What is a pull request?

Pull request is a feature that allow to manage changes to the repository that is proposed by each teammember that can be reviewed by others and improved. 

c. How do I open up a pull request?

Firstly the changes has to be made in a feature branch, then we need to select target branch while creating pull request. There is an ability to add some description, title, reviewers, etc.

d. Give me a step by step guide on how to add someone to your repository.

1. Navigate to Repository Settings
2. Access Management or Collaborators Settings
3. Add Collaborator
4. Choose Permission Level
5. Send Invitation
6. Accept Invitation
7. Confirmation

e. What is the difference between git and GitHub?

Git is a version control system, it is a command line tool. Github - web-based platform that provides features to use Git (provides web interfaces).

f. What does git diff do?

Git diff is a command that allows to see the differences between versions of the files on different stages.

g. What is the main branch?

Main (previously Master branch) is a primary/default branch in a repository. Usually all other new feature bracnhes created from the main branch and as a result of resolving pull requests - merged to it.

h. Besides our initial commit if it is a new repository, should we directly push our changes directly into the main branch?

No, it is not the best practice because it is hard to track changes. Bettew way is to create a new branch from main, made changes, create pull request (source branch - feature branch, target branch - main) and merge changes.
