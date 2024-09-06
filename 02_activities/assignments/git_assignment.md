# Git Assignment

In this assignment, you will be learning more about `git` and `GitHub` by working through the questions. As you answer the questions, you will practice your git skills by staging, committing and pushing your answers (changes) along the way.

1. Create a new public repository called `git_assignment` without a `README.md`
2. Clone it to your local computer
3. Create a `README.md` and paste the following code inside:

    ```markdown
    # Git Assignment - <Your GitHub Username>
    ```

4. Stage, commit and push the repo
5. Create a new branch called `assignment`
6. In your `README.md`, answer the following questions:
    
    > a. What is an _issue_?
   
     An issue is a way to track tasks, enhancements, bugs, or questions related to a project in a repository. 
    > b. What is a _pull request_?
    
     A pull request (PR) is a request to merge changes from one branch of a repository into another (often from a feature branch into the main branch). It allows developers to review, discuss, and approve changes before they are integrated into the main codebase.
    > c. Describe the steps to open a _pull request_?
     
     Create a branch: Make a new branch from the main branch or another branch where you want to apply changes.
     Make changes: Work on the code, and commit your changes to your branch.
     Push the branch: Push the branch with your changes to the remote repository on GitHub.
     Open a pull request: Go to the repository on GitHub, navigate to the Pull Requests tab, and click "New Pull Request".
     Compare changes: Select the branch you want to merge into the base branch (e.g., main), and submit the pull request for review.
     Review and merge: Collaborators can review the changes and, once approved, the pull request can be merged into the target branch.

    > d. Describe the steps to add a collaborator to a repository (share write permissions)

     Go to the repository: Open the repository on GitHub.
     Access settings: Click on the "Settings" tab.
     Manage access: In the left sidebar, select "Collaborators and Teams".
     Invite collaborator: Click "Add people", search for the collaborator’s GitHub username, and invite them.
     Set permissions: After the invitation is accepted, you can assign different levels of access (e.g., write or admin permissions).

    > e. What is the difference between `git` and `GitHub`?
     
     Git: A version control system that helps manage and track changes to code locally. It operates from the command line, and is used to clone, commit, push, pull, and manage code versions.
     GitHub: A cloud-based hosting service for Git repositories. It adds collaboration features like pull requests, issues, and team management on top of Git, and allows for online storage of Git repositories.

    > f. What does `git diff` do?
     The git diff command shows the changes between two commits, between the working directory and the staging area, or between the working directory and the most recent commit. It helps developers see what has changed in their code.

    > g. What is the `main` branch?
      The main branch is the default, primary branch in a Git repository where the production-ready code typically resides. It is the branch that most collaborators pull from and push changes to after completing work in feature branches.
      
    > h. Besides our initial commit if it is a new repository, should we directly push our changes directly into the `main` branch?
     No, you should avoid pushing changes directly to the main branch unless it's a very small project or the change is minor. It's better to create a new branch for each feature or bug fix, make changes in that branch, and then open a pull request to merge those changes into the main branch after they’ve been reviewed. This ensures better code quality and reduces the risk of introducing errors.

Feel free to at any point (recommended after answering every 2 questions) to stage, commit and push your work to GitHub. It is a great way to practice using `git`!

1. When you are done, please stage, commit your changes, and push it to GitHub.
2. Open up a pull request.
3. Write down in your pull request what you learned from this assignment. ([Guidelines for Pull Request Descriptions](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md#guidelines-for-pull-request-descriptions))

## Criteria

|Criteria|Complete|Incomplete|
|---|---|---|
|Branching|A new branch was created and used|A new branch was not created and used.|
|Pull Request|A pull request with the answers to the questions was made.|No pull request or answers were made.|
|Explanation Quality|Each answer per question is clear and concise.|Each answer per question is inconclusive.|

## Submission Information

🚨 **Please review our [Assignment Submission Guide](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md)** 🚨 for detailed instructions on how to format, branch, and submit your work. Following these guidelines is crucial for your submissions to be evaluated correctly.

### Submission Parameters:
* Submission Due Date: `2024-08-25 - 23:59`
* The branch name for your repo should be: `assignment`
* What to submit for this assignment:
    * The mentioned markdown file above (README.md) should be populated with what we have asked for and should be the only change in your pull request.
* What the pull request link should look like for this assignment: `https://github.com/<your_github_username>/git_assignment/pull/<pr_id>`
    * Open a private window in your browser. Copy and paste the link to your pull request into the address bar. Make sure you can see your pull request properly. This helps the technical facilitator and learning support staff review your submission easily.

Checklist:
- [ ] Create a branch called `assignment`.
- [ ] Ensure that the repository is public.
- [ ] Review [the PR description guidelines](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md#guidelines-for-pull-request-descriptions) and adhere to them.
- [ ] Verify that the link is accessible in a private browser window.

If you encounter any difficulties or have questions, please don't hesitate to reach out to our team via our Slack at `#cohort-3-help`. Our Technical Facilitators and Learning Support staff are here to help you navigate any challenges.
