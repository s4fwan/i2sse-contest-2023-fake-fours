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
The menu can be navigated using num keys [0-9] corresponding to each menu item.

##### Options
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

The main file is reponsible for declaring and defining all global variables used througout the program including `gameState` which stores the current state of the game - menu, playing, game over, etc. It's also where the `setup()` and `draw()` functions are located. The `draw()` function here calls all the other classes, methods and functions. The `reset()` function resets all global variables except the options and high-score, so that the user is able to replay the game without restarting the program.

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

## User Acceptance and System Tests

**Test ID:** SysCucumber01 <br>
**Test Description:** Does a CUCUMBER appear when program is ran? <br>
**Test Steps:**  
1. Run the program  
2. Observe <br>
**Expected Outcome:** You see a CUCUMBER clearly on the screen. <br>
**Result:** PASS

**Test ID:** SysCucumber02 <br>
**Test Description:** Does the "JUMPING" mechanism work? <br>
**Test Steps:**  
1. Run the program   
2. Click on, or next to the CUCUMBER <br>
**Expected Outcome:** The CUCUMBER does one jump, then continues moving. <br>
**Result:** PASS


**Test ID:** SysJudge01 <br>
**Test Description:** Does a JUDGE appear when program is ran? <br>
**Test Steps:**  
1. Run the program  
2. Observe <br>
**Expected Outcome:** You see a JUDGE clearly on the screen. <br>
**Result:** PASS


**Test ID:** SysJudge02 <br>
**Test Description:** Does the "JUDGE walking" mechanism work? <br>
**Test Steps:**  
1. Run the program  
2. Press the "A" or "D" key <br>
**Expected Outcome:** You see the JUDGE walking left and right responding to the key presses, and not going off screen. <br>
**Result:** PASS


**Test ID:** SysJudge03 <br>
**Test Description:** Does the "JUDGE jumping" mechanism work? <br>
**Test Steps:**  
1. Run the program  
2. Press the "W" or "Space" key <br>
**Expected Outcome:** You see the JUDGE jump. <br>
**Result:** PASS

**Test ID:** SysGame01 <br>
**Test Description:** Do both JUDGE and JUMPING CUCUMBER appear in the program? <br>
**Test Steps:**  
1. Run the program  
2. Navigate through the menus until you can play  
3. Observe<br>
**Expected Outcome:** You see a JUDGE and JUMPING CUCUMBER clearly on the screen. <br>
**Result:** PASS

**Test ID:** SysGame02 <br>
**Test Description:** Does the movement work for the JUDGE? <br>
**Test Steps:**  
1. Run the program  
2. Navigate through the menus until you can play  
3. Press the WASD keys <br>
**Expected Outcome:**  
The `W` key makes the judge jump.  
The `A` key makes the judge move left.  
The `D` key makes the judge move right.  
The `S` key makes the judge perform an action. <br>
**Result:** PASS

**Test ID:** SysGame03 <br>
**Test Description:** Does the health system work? <br>
**Test Steps:**  
1. Run the program  
2. Navigate through the menus until you can play  
3. Allow the JUMPING CUCUMBER to be COVERING the JUDGE<br>
**Expected Outcome:** The health bar at the top of the screen drains whenever the JUDGE is being covered by the JUMPING CUCUMBER <br>
**Result:** PASS

## Unit Tests
#### Subject Class
**Test ID:** UnitSubject01  
**Inputs:** `A` key  
**Expected Output/Outcome:** `position.x` will decrease and JUDGE will move left  
**Result:** Pass  

**Test ID:** UnitSubject02  
**Inputs:** `W` key  
**Expected Output/Outcome:** `position.y` will gradually increase, then decrease and JUDGE will jump  
**Result:** Pass 

#### Object Class
**Test ID:** UnitObject01  
**Inputs:** `difficulty` initialised in Menu class  
**Expected Outcome:** Different number of JUMPING CUCUMBERS and different movement patterns depending on `difficulty	` value  
**Result:** Pass

**Test ID:** UnitObject02  
**Inputs:** `roll` assigned a random value   
**Expected Outcome:** Jump interval is random - CUCUMBER JUMPS randomly with no recognisable pattern  
**Result:** Pass

#### Objective Class
**Test ID:** UnitObjective01  
**Inputs:** `hp`    
**Expected Output/Outcome:** If `hp<=0` then `position.x && position.y` are assigned random values. The bench (objective) respawns at a random position   
**Result:** Pass

**Test ID:** UnitObjective02  
**Inputs:** `hp`   
**Expected Output/Outcome:** `drawWidth` is inversely proportional to `hp`. The progress bar above the bench fills up as `hp` decreases.  
**Result:** Pass

#### Health Class
**Test ID:** UnitHealth01  
**Inputs:** `judge.health`   
**Expected Output/Outcome:** `drawWidth` is proportional to `hp`. The health bar at the top drains as `judge.health` decreases.  
**Result:** Pass

**Test ID:** UnitHealth02  
**Inputs:** `judge.health`   
**Expected Output/Outcome:** `gameOver = true` The game ends and the game over screen is displayed  
**Result:** Pass

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

Allen being the product owner meant he was responsible for setting the final user criterias and ensuring our product is ready for the user.

The other team members, Michael and Amelia, had the responsibility of typing up the weekly retrospectives that were due at the end of each lesson and then submitting them once all the team had reviewed and approved.

#### Review process:
The first review process that our team defined before the sprint to ensure software quality was planning and making earlier deadlines for tasks to allow room for any issues that might occur and extra time to make ammends if needed. At the start of the sprint our team looked at all the upcoming tasks during the sprint and brought forward the due date by a couple days for each task. By having work completed early we were able to make prototypes of our programs and then add extra details and improve our code. This worked successfully majority of the time and allowed us to be prepared and create programs of a high standard. 

The second review process our team decided on was frequent testing as it would allow us to find any errors throughout the code early on. After commiting any changes to the code, the programs would be tested and checked for any errors. We would then fix any errors that occurred before moving onto a different section. This made it easier in the long run as we would stay on top of errors and didn’t have to backtrack on our work. Another method we used was testing if our code would meet requirements and acceptance criteria. This was quick and easy for our team to do as we planned out what needed to be met before creating code and then produced our code around what was required. 

#### Definition of Done:
- All user story acceptance criteria is met 
- Requirements are met
- All unit tests pass 
- All to dos on board are completed or identified as failed if unable to complete 
- All documentation is up to date
- All team members approve of what’s been completed
- No errors in code
- Code is complete and executes

## Ethics
- No external sources used for code except Processing references
- Other tools used include: Adobe Photoshop
- All assets created by the team except: the background and the music used. 
- Any non-original assets are royalty free