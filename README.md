# Git Assignment - <keyuancy>

nano README.mda. What is an issue?
so far so good no issue
b. What is a pull request?
pull request - A pull request is a feature commonly used in distributed version control systems like Git, particularly in platforms like GitHub, GitLab, and Bitbucket. It allows developers to propose changes to a repository hosted on such platforms.
c. How do I open up a pull request?
first we need fork the repository and clone the forl
d. Give me a step by step guide on how to add someone to your repository.
Navigate to Your Repository: Go to the main page of your repository on GitHub.
Click on "Settings": On the right-hand side of the repository page, you'll find a "Settings" tab. Click on it to access the settings for your repository.
Select "Manage access": In the settings sidebar on the left, you'll see an option labeled "Manage access." Click on it.
Click on "Invite a collaborator": You'll see a button labeled "Invite a collaborator" near the top-right corner of the page. Click on it to invite someone to collaborate on your repository.
Enter the Collaborator's Username or Email: In the dialog that appears, enter the GitHub username or email address of the person you want to add as a collaborator.
Choose the Collaborator's Access Level: You can choose whether to give the collaborator "Write" access or "Maintain" access. Write access allows them to push to the repository and manage issues and pull requests. Maintain access grants them additional privileges, such as managing repository settings and inviting more collaborators.
Click on "Add [username]": Once you've entered the collaborator's information and selected their access level, click on the "Add [username]" button to send the invitation.
Confirm the Invitation (if necessary): If the collaborator is not already a GitHub user, they will receive an email inviting them to join GitHub and collaborate on your repository. They'll need to accept the invitation before they can access the repository.
e. What is the difference between git and GitHub?
git as Git is the underlying version control system that allows developers to track changes to files, while GitHub is a web-based platform that provides hosting for Git repositories and collaboration features to facilitate teamwork and project management. The `git diff` command is used to show the differences between various states of your Git repository, such as changes between commits, the working directory, and the staging area. It helps you understand what changes have been made to your files.
f. What does git diff do?
The `git diff` command is used to show the differences between various states of your Git repository, such as changes between commits, the working directory, and the staging area. It helps you understand what changes have been made to your files.
g. What is the main branch?
main branch for muy perspective meanes thr main branch before fork and developed by expenince developer for other user to make a fork as well as a template The main branch usually has a default name like master or main, though some projects may use different names based on their conventions or preferences. For example, GitHub recently renamed the default branch from master to main as part of a broader initiative to remove potentially offensive language from its platform.
h. Besides our initial commit if it is a new repository, should we directly push our changes directly into the main branch?
no ideally, 4 reasons below  Isolation of Changes: By creating feature branches, you isolate your changes from the main branch until they are ready to be merged. This allows you to work on multiple features or fixes simultaneously without affecting the stability of the main branch.
Code Review: Pull requests provide an opportunity for code review. By opening a pull request, you invite your peers to review your changes, provide feedback, and ensure code quality. This helps catch errors, improve code clarity, and maintain consistency across the codebase.
Continuous Integration and Testing: Many development teams use continuous integration (CI) systems to automatically build, test, and validate code changes. Pull requests can trigger CI pipelines, allowing automated tests to run against your changes before they are merged into the main branch. This helps catch regressions and ensures that new code meets quality standards.
Version History: Using feature branches and pull requests preserves a clean version history. Each pull request represents a discrete set of changes, making it easier to track the evolution of the codebase over time and understand the rationale behind each change.
Reduced Risk: By decoupling feature development from the main branch, you reduce the risk of introducing bugs or breaking existing functionality. Changes can be thoroughly tested and reviewed before they are merged into the main branch, helping to maintain the stability of the codebase.
