# Final Report 

## Introduction
Our project aims to demonstrate the creative potential of our programming skills and our team's ability to collaborate and work together to achieve a complex goal.  
The team was given the task of creating two interactive processing animations, implementing topics determined through drawing lots. 

#### Topics:  
- **Subject:** Judge
- **Object:** Cucumber
- **Activity:** Jumping
- **Interaction:** Covering

The first animation features a *Jumping Cucumber*. Where a cucumber is animated to be moving
across the screen and will jump up and down through user interaction. 

The second animation features a *Judge*. Where a pixel-art style judge can be controlled by the user to move and jump, with all the movement being animated.

These two animations were then combined to create the final 2D platformer/action game which features the *Covering* interaction between the *Jumping Cucumber* and *Judge*.

## User Manual  
### v1.2 - 01/06/2023  

##### Menu
The user is greeted with a user-friendly menu.  
[insert menu image]  
The menu can be navigated using num keys [0-9] corresponding to each menu item.

##### Options
[insert options page image]  
In the options page, the user can select various aspects of the game such as difficulty, map, character customisation and more.

##### Controls
**Movement**    `A` and `D`  
**Jump**            `W` or `SPACE`  
**Action**          `S` or `SHIFT`  
**Pause**           `P`  
**Mute**             `M`  
**Quit**              `ESC`

##### How to Play
The user controls a ***Judge***  
The user's objective is to sentence the jailed cucumber by moving behind the bench and holding the **Action** key, which will make the judge sit and swing his gavel. A progress meter will appear above the desk indicating how long it will take to sentence the jailed cucumber. Once the progress meter is full, the score updates by 1 point. The bench will then reappear at a random location. The aim of the game is to obtain the highest score possible.

The ***Jumping Cucumber*** is computer controlled  
The number of jumping cucumbers and their movement patterns are determined by the difficulty selected on the Options screen. The jumpings cucumber/s move left and right within the boundary of the game window, and jump at random intervals, to get in the judge's way.

Avoid any cucumbers ***Covering*** the judge  
If the judge gets covered by a jumping cucumber, the health bar at the top of the screen will start to drain. The user must complete the objective while avoiding the jumping cucumbers to not lose health.

Empty health bar is ***GAME OVER***  
If the health bar drains until it is empty, the game will display a game over screen with the current score and a high-score. Pressing the key on the screen will restart the game.

## Design and Architecture
![Program Architecture Graph](https://i.ibb.co/tLPmByL/Screenshot-2023-05-31-at-17-11-37.png)

This Graph is a representation of the architecture of our program and it illustrates how aspects of our program interact with each other and the effect certain 
parts have on the other parts. 

The main file is reponsible for defining and initialising all global variables used througout the program including `gameState` which stores the current state of the game - menu, playing, game over, etc. It's also where the `setup()` and `draw()` functions are located. The `draw()` function here calls all the other classes, methods and functions. The `reset()` function resets all global variables except the options and high-score, so that the user is able to replay the game without restarting the program.

The menu class is reponsible for displaying all the menus and allowing the user to navigate and make changes within the menus. The menu then passes all changed variables back to the main file.

All the other classes are called by the main file. Each class has their own methods to display, animate and update the corresponding class's parameters.

There are several classes and files including other functions that have been omitted from the graph to simply it. All important aspects have been included in the graph to provide an overview of how the program functions behind the scenes. There are smaller classes and functions controlling the audio, map selection, platform placement and more that aren't included in the graph.

## User Stories and Requirements

### User Story 1:
As a user, I want to see an animation of CUCUMBER

**User Story Acceptance Criteria:**

- Given the Processing Program, when the user presses the play button, then a CUCUMBER appears with a designed background
- Given a running program, when the user does nothing, then the CUCUMBER is moving across the screen
- Given the CUCUMBER is moving across the screen, when it goes off-screen, it will reset and appear again from the start position

### User Story 2:
As a user, I want to interact with a CUCUMBER, so that it is JUMPING

**User Story Acceptance Criteria:**

- Given a running program, when the user does nothing, then the CUCUMBER continues moving across the screen
- Given a running program, when the user clicks, then the CUCUMBER JUMPS
- Given the CUCUMBER is mid-jump, when the user clicks, then the CUCUMBER continues it's current JUMP and is not affected by the click

### User Story 3:
As a user, I want to see an animation of JUDGE

**User Story Acceptance Criteria:**

- Given the Processing Program, when the user presses the play button, then a JUDGE appears
- Given a running program, when the user does nothing, then the JUDGE is walking around randomly
- Given the JUDGE is moving around the screen, when it reaches the boundary, it will not go any further and turn back around

### User Story 4:
As a user, I want to interact with a JUDGE, so that moves and jumps

**User Story Acceptance Criteria:**

- Given a running program, when the user does nothing, then the JUDGE stands still
- Given a running program, when the user presses "W" or "Space", then the JUDGE jumps
- Given the JUDGE is mid-jump, when the user presses "W" or "Space", then the JUDGE continues it's current jump and is not affected by the key press
- Given a running program, when the user presses "A" or "D", then the JUDGE moves left or right

### User Story 5:
As a user, I want to see JUMPING CUCUMBER INTERACT WITH JUDGE BY COVERING, so that I can play with it

**User Story Acceptance Criteria:**

- Given the Processing Program, when the user presses the play button, both JUMPING CUCUMBER and JUDGE appears
- Given a running program, when the user presses any of the WASD keys, then JUDGE moves accordingly
- Given the JUMPING CUCUMBER is moving and jumping across the screen, when it is COVERING the JUDGE, the health starts to drain
- Given the JUMPING CUCUMBER is covering the JUDGE, when the health drains completely, the user loses the game

## User Acceptance Tests

**Test ID:** SysCucumber01 <br>
**Test Description:** Does a CUCUMBER appear when program is ran? <br>
**Test Steps:**  
1. Start the program  
2. Observe <br>
**Expected Outcome:** You see a CUCUMBER clearly on the screen. <br>
**Actual Outcome:** PASS

**Test ID:** SysCucumber02 <br>
**Test Description:** Does the "JUMPING" mechanism work? <br>
**Test Steps:**  
1. Start the program   
2. Click on, or next to the CUCUMBER <br>
**Expected Outcome:** The CUCUMBER does one jump, then continues moving. <br>
**Actual Outcome:** PASS


**Test ID:** SysJudge01 <br>
**Test Description:** Does a JUDGE appear when program is ran? <br>
**Test Steps:**  
1. Start the program  
2. Observe <br>
**Expected Outcome:** You see a JUDGE clearly on the screen. <br>
**Actual Outcome:** PASS


**Test ID:** SysJudge02 <br>
**Test Description:** Does the "JUDGE walking" mechanism work? <br>
**Test Steps:**  
1. Start the program  
2. Press the "A" or "D" key <br>
**Expected Outcome:** You see the JUDGE walking left and right responding to the key presses, and not going off screen. <br>
**Actual Outcome:** PASS


**Test ID:** SysJudge03 <br>
**Test Description:** Does the "JUDGE jumping" mechanism work? <br>
**Test Steps:**  
1. Start the program  
2. Press the "W" or "Space" key <br>
**Expected Outcome:** You see the JUDGE jump. <br>
**Actual Outcome:** PASS

**Test ID:** SysGame01 <br>
**Test Description:**  <br>
**Test Steps:**  
1. .  
2. . <br>
**Expected Outcome:**  <br>
**Actual Outcome:** 

**Test ID:** SysGame02 <br>
**Test Description:**  <br>
**Test Steps:**  
1. .  
2. . <br>
**Expected Outcome:**  <br>
**Actual Outcome:** 

**Test ID:** SysGame03 <br>
**Test Description:**  <br>
**Test Steps:**  
1.   
2. . <br>
**Expected Outcome:**  <br>
**Actual Outcome:** 

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
The Zita-PMD code checker reports 0 violations as of 31/05/2023.  
This has been the case since commit: `015f047` by Safwan on 25/05/2023

**Warnings from Week 11**  
1 warning from the Zita-PMD code checker:

- Code Style ShortVariable:  
*Avoid variables with short names like up*

Method to fix issues:

-  Only one issue needed fixing
-  The issue didn't need to be directly addressed, it was fixed with commit `015f047` as mentioned above.
-  Commit `015f047` contained major changes to code, and so the issue was naturally fixed, if issue needed to be directly addressed, solution would be to use camelCase naming convention for all variables and use meaningful variable names.

###### Nothing further to report on software quality.

## Project Management
#### Roles and responsibilities:
The roles our teamed agreed on during week 8 when the sprint commenced include:

- **Safwan** - SCRUM Master 
- **Allen** - Product Owner

Safwan was the most appropriate choice for our SCRUM master as he has a deep understanding surrounding GitHub, Processing and Java. He also possesses a lot of leading qualities. 

Allen being the product owner meant he was responsible for setting the final user criteria's.

The other team members, Michael and Amelia, had the responsibility of taking turns typing up the weekly retrospectives that were due at the end of each lesson and then submitting them once all the team had reviewed and approved.

#### Review process:
The first review process that our group defied before the sprint to ensure software quality was planning. We decided to make earlier deadlines for tasks to allow room for any issues that might occur and extra time to make edits if needed. At the start of the sprint our group looked at all the upcoming tasks during the sprint and bought forward the due date by a couple days for each task. By having work completed early we were able to make prototypes of our programs and then add extra details and improve our code. This worked successfully majority of the time and allowed us to be prepared and create programs of a high standard. 

The second review process our group decided on was frequent testing as it would allow us to find any errors throughout the code early on. After adding any new lines of code to our programs the code would be ran and checked for any errors. We would then fix any errors that occurred before moving onto a different section. This made is easier in the long run as we would stay on top of errors and didn’t have to backtrack on our work. Another method we used was testing if our code would meet requirements and acceptance criteria. This was quick and easy for our group to do as we planned out what needed to be met before creating code and then produced our code around what was required. By constantly error checking and planning our what requirements and criteria code needed to pass our group was able to create high quality code. 

#### DoD:
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