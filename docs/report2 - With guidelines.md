# Final Report 

## Introduction

The two programs our group created includes a cucumber jumping and a judge. The first program shows the suers a cucumber moving across the screen from left to right and then back again. The users can interact with it by clicking on the cucumber to make it jump up and then it falls back to the ground while it continues to travel across the screen. The second program shows a judge moving across the screen randomly. Users can click on the judge which causes it to sit and if they click again while it’s sitting the judge will stand up. If the users click anywhere but the judge, it will continue with its previous actions and no change will occur. The two programs together make an interactive game which involves the cucumber being covered by the judge. In this game the cucumber will move across the screen and will jump without the user interacting with it, but the user will be able to use their keyboards to control the judge to run around the screen and jump. A judge desk and a cucumber in jail are also shown when users run the program. The users can destroy the desk with a gavel which will make the desk and jail cell with the cucumber disappear and reappear in a different random location on screen. Everytime a desk is destroyed the user will gain one point and a score is displayed on the upper left-hand side of the screen.The users will also have to prevent the cucumber covering the judge by interacting with the judge. If the cucumber covers the judge, the judge will lose health. Once the judge loses all its health the program will end. The game also features music to make it more enjoyable. 

## User Manual

First program (jumping cucumber):
User runs cucumber program, and an image of a cucumber will appear on screen in front of a background that has grass and a blue sky. The cucumber will automatically move across the screen from left to right and then go back once it reaches the right side of the screen. Users can interact with cucumber animation by clicking on the cucumber. When the users click on the cucumber it will jump and then fall to the ground. If the user clicks while the cucumber is mid jump, the cucumber will continue its current jump and will not be affected by the user interaction.

Second program (judge):
User runs judge program, and an image of a judge will appear on screen in front of a background of trees. The judge will walk around the screen in a random pattern. Users can interact with the animation of the judge by clicking on it. When the user clicks on the judge it will sit down and if the user clicks on it again it will stand up. If the user clicks on the screen around the judge, it will not affect the judge and it will continue with its previous actions.

Final combined program (game):
User runs the program and an image of a judge, a cucumber, a judge’s desk, and a cucumber in a cage will appear on screen in front of a background of trees. The cucumber will automatically move across the screen starting at the left-hand side and the move across back and forth across the screen while jumping up and down. The users will be able to control the judge using keys on their keyboard. The keys A and D will allow the judge to run across the screen from side to side and W and the spacebar allows the judge to jump. Users can press S to allow the judge to use his gavel. The gavel can be used to destroy the judge’s desk which has a health bar appear over it whenever the judge stands at the desk. Once the desk is destroyed users will gain one point. A point score is at the upper left-hand side of the screen. At the top of the screen next to the point score there is a health bar from the judge which will go down every time the judge is covered by the cucumber. Users will have to user their keyboards to avoid being covered by the cucumber. Once the judge loses all its health the screen will turn red and the text “Game over” will appear thus leading the program to end. 

## Design and Architecture
Please include a graphical representation of the architecture of your program, illustrating how its primary components relate to each other. You may omit certain details to ensure clarity in the diagram. It is meant to give an overview, rather than a complete picture.

## User Acceptance Tests
- List the user stories and requirements that were the source for the user acceptance tests.

User stories:
-	As a user, I want to see an animation of a JUDGE.
-	As a user, I want to interact with a JUDGE, so that it sits and stands.
-	As a user, I want to see a JUMPING CUCUMBER.
-	As a user, I want to interact with a CUCUMBER, so it is JUMPING.
Requirements:
-	Show an animation of a JUDGE 
-	Show an animation of a CUCUMBER 

- Include a table that gives an overview of the acceptance tests
and tells whether they passed or failed.

## System Test
- Include a table that lists the system tests, that weren’t acceptance tests. These are tests that run the entire program, and are
executed by the team to test features they added themselves.
- Include in that table the outcome for each system test, including
an overview of the test and whether it passed or failed.


## Unit Tests
- Select at least four sub-components of your animation.
- Include a table of lists for each component of their unit tests. Include the test inputs, the expected output/outcome, and whether
the test failed or passed.

## Software Quality
- Include a table that lists all warnings that the Comp1050 Checker
PMD in the GitHub Actions tab raises for your project.

1 warning from the Comp1050 checker:
- Code style (variables were too short)

- List which issues you fixed since week 11. Give a brief rationale
for fixing the issue.

## Project Management

Roles and responsibilities:
The roles our teamed agreed on during week 8 when the sprint commenced include Safwan as our SCRUM master and Allen as our Product Owner. Safwan was the most appropriate choice as our SCRUM master as he has a deep understanding surrounding GitHub and possesses a lot of good group leader qualities. The other team members, Michael and Amelia, had the responsibility of taking turns typing up the weekly retrospectives that were due at the end of each lesson and then submitting them once all the team had reviewed and approved.

Review process:
The first review process that our group defied before the sprint to ensure software quality was planning. We decided to make earlier deadlines for tasks to allow room for any issues that might occur and extra time to make edits if needed. At the start of the sprint our group looked at all the upcoming tasks during the sprint and bought forward the due date by a couple days for each task. By having work completed early we were able to make prototypes of our programs and then add extra details and improve our code. This worked successfully majority of the time and allowed us to be prepared and create programs of a high standard. 
The second review process our group decided on was frequent testing as it would allow us to find any errors throughout the code early on. After adding any new lines of code to our programs the code would be ran and checked for any errors. We would then fix any errors that occurred before moving onto a different section. This made is easier in the long run as we would stay on top of errors and didn’t have to backtrack on our work. Another method we used was testing if our code would meet requirements and acceptance criteria. This was quick and easy for our group to do as we planned out what needed to be met before creating code and then produced our code around what was required. By constantly error checking and planning our what requirements and criteria code needed to pass our group was able to create high quality code. 

DoD:
-	All user story and acceptance criteria is met 
-	Requirements are met
-	No errors in code and code is complete and runs
-	All unit tests are passed 
-	All to dos on board are completed or identified as failed if unable to complete 
-	All documentation is up to date
-	All team members approve of what’s been completed


## Ethics
- List all external sources for code, design, or other artefacts that
you have used in your program.
- List all tools that you have used beyond Processing, Git, GitHub,
and word processing tools in your project. For both programming and the creation of documentation.
- Include any other acknowledgement of contributors beyond
your team or teaching staff, i.e. anyone who was not on your
team or a tutor or lecturer, who helped you nevertheless