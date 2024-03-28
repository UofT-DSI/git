# Technical Facilitator Playbook

## How do you interact with the repo?
The Technical Facilitator will teach using the content provided in the `/01-slides` directory. You are allowed to live code with them during your lecture. Just make sure you upload the live-coding files to a new directory called `/live-coding` under `/01-slides` to this repository using a new branch and open up a pull request for it to be merge.

## How does the module flow?
The module is organized into 3 main directories:
1. Slides
2. Assignments
3. Homework

The `/01-slides` directory would be the first directory anyone would see, and contains the lecture slides, learning outcomes, and anything related to the learning outcomes such as live-coding files.

The `/02-assignments` directory is the second directory containing the assignments that would be marked as a `pass` or `fail`. Compared to `/03-homework`, the assignments are slightly more difficult, and helps encapsulates the learnings for the week. All assignments are mandatory to complete and deliver.

The `/03-homework` directory contains all the homework, a learner can do to demonstrate mastery of the learning contents. Unlike the `/02-assignments` directory, all homework is optional, but is highly encouraged to attempt.

### Week 1

#### Lecture
The focus of the sole lecture is to introduce the learners to using `git` commands such as:
```git
git add .
git commit -m "Your message"
git push -u origin <branch>
git pull
git checkout -b <branch_name>
git checkout <branch_name>
```

#### Assignment
The assignment for this week is to have learners learn more about `git` and the difference between that and `GitHub`. They will practice using `git` to constantly push their answers (changes) onto `GitHub`.

## How do you assign assignments?
Assignments are given and assigned at the start of each week at the end of the first lecture. The Technical Facilitator will announce to the learners what the assignment is about, and how everything they will learn within the week will equip them to work on the assignment.

## How an assignment is expected to be completed and delivered?
Learners are expected to complete the assignment before the first lecture of the following week. They will deliver the assignment by opening up a pull request on their copied repo. The learner will also add a Learning Suport Staff as a reviewer indicating they delivered a completed assignment, and it is ready to be graded as a `pass` or `fail`.

## What is the criteria for `pass` or `fail`?
The criteria for a `pass` or `fail` is if all parts of the program are working, and nothing in the code is broken. For some assignments, a rubric will be given outlining the criteria needed to pass.

## How to mark?
If the learner's solution works, then they `pass`! You or the Learning Suport Staff would only need to focus on providing them constructive feedback on how they can improve their code. If the solution does not work, then they `fail`, and you would provide any constructive feedback on their existing code, and encourage them to get their solution working.

## How will feedback be given?
Feedback will be given through the pull request a learner had made, and allowing them to make revisions if needed. In order to maximize learning, feedback must be constructive, and specific.

<hr>

## Definitions
**Lecture**: A Lecture is a synchronous period of time, lasting up to 3 hours, where the Technical Facilitator will facilitate and deliver the contents and learning outcomes online through Zoom. Learners are encouraged to participate and ask questions as they learn. Breaks are given if lecture goes pass an hour, with a 10 minutes break given for every hour still in a lecture.

**Work Period**: A Work Period is an asynchronous period of time, lasting up to 3 hours. The learners will work on their assignments and/or homework during this block of time. A Learning Suport Staff will be present online through Zoom to assist the learners and answer any questions they may have. As work periods are asynchronous and flexible, learners can choose to work on their own time. However, it is encouraged to work during the block of time when a Learning Suport Staff is present.

**Assignments**: An Assignment is work assigned as part of the certification. They are slightly more difficult, providing an opportunity for learners to integrate and synthesize what they have learned throughout the week to meet the set learning outcomes.

## generate_slides.sh

This script is designed to convert Markdown files located in a specified folder into slide presentations using Marp CLI, allowing for the generation of either HTML or PDF formats based on user input. It includes an option to apply a custom CSS theme to the slides by specifying a theme path. The script also provides a help function detailing its usage, options, and examples for convenience. It ensures the necessary directories exist, validates the presence of Marp CLI on the system, processes each Markdown file found in the specified directory, and outputs the generated slides into a designated output folder, displaying the status of each operation and a completion message. The only configuration needed is to set where the md files are and where you would like the pdf/html files to be placed.
