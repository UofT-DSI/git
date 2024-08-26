# Git Assignment - <Clairezhechen>

### a. What is an issue?

An issue is a tool for tracking tasks, enhancements, bugs, or questions in a GitHub repository. It allows collaborators and contributors to discuss the issue and track its progress until it is resolved or closed.

### b. What is a pull request?

A pull request (PR) is a feature on GitHub that allows a user to notify project maintainers about changes they have made in a branch. The maintainers can review the changes, discuss potential modifications, and merge the changes into the main branch if they are approved.

### c. Describe the steps to open a pull request?

1. Push your changes to a branch in the repository.
2. Navigate to the repository on GitHub.
3. Click the "Compare & pull request" button next to the branch you want to merge.
4. Write a title and description for the pull request, explaining what changes have been made.
5. Submit the pull request.
6. Reviewers can then comment on the pull request and approve or request further changes.

### d. Describe the steps to add a collaborator to a repository (share write permissions)

1. Go to the GitHub repository you want to share.
2. Click on the "Settings" tab.
3. In the left sidebar, click "Collaborators & teams".
4. Click the "Add people" button.
5. Enter the GitHub username or email of the person you want to add.
6. Select the appropriate permissions level (e.g., write, read, or admin).
7. Click "Add collaborator" to send an invitation to the user.

### e. What is the difference between git and GitHub?

Git is a distributed version control system that allows developers to track changes in source code during software development. It enables multiple developers to work on the same project simultaneously without interfering with each other's changes.
GitHub, on the other hand, is a cloud-based platform that hosts Git repositories. It provides a web-based interface for Git and offers additional features like pull requests, issue tracking, and collaboration tools.

### f. What does git diff do?

The `git diff` command shows the differences between the working directory and the staging area, or between the staging area and the last commit. It highlights the changes that have been made but not yet committed, helping developers review modifications before committing them.

### g. What is the main branch?

The main branch (formerly known as `master`) is the default branch in a Git repository. It typically contains the production-ready version of the code. Changes and new features are usually developed in separate branches and then merged into the main branch once they are stable and ready for deployment.

### h. Besides our initial commit if it is a new repository, should we directly push our changes directly into the main branch?

No, it's generally recommended to work on a separate branch rather than directly on the main branch. By doing so, you can isolate your changes and keep the main branch clean and stable. Once your work is complete and reviewed, you can merge the changes into the main branch through a pull request.
