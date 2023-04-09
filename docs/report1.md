# Interim report

## Introduction

Our project aims to demonstrate the creative potential of our programming skills and our team's
ability to collaborate and work together to achieve a complex goal. 
We achieved this through the implementation of two Processing animations.

The first animation features a "Jumping Cucumber." Where a cucumber is animated to be moving
across the screen and will jump up and down through user interaction. 

The second animation features a "Judge." Where a pixel-art style judge is animated to be walking
left and right randomly, within the window area. The user can interact with the judge to make
it sit and stand up.

Further technical information about the repository and code can be found in the README.MD file.

## User Stories and Requirements

**User Story:** As a user, I want to see an animation of CUCUMBER, 
so that I can play with it

**User Story Acceptance Criteria:** 
- Given the Processing Program, when the user presses the play button, then a CUCUMBER appears. 
- Given a running program, when the user does nothing, then the CUCUMBER is moving across the screen.
- Given the CUCUMBER is moving across the screen, when it goes off-screen, it will reset and appear again from the start position.
- Given a running program, when the user clicks, then the CUCUMBER JUMPS.

**Requirement:** Show an animation of JUDGE

**Requirement Acceptance Criteria:** 
- JUDGE is easily recognisable
- The figure is animated to be walking about randomly
- The user can interact with the figure so that it sits in place
- The user can interact with the sitting JUDGE so that it starts moving again

## User Acceptance Tests

**Test ID:** SysCucumber01 <br>
**Test Description:** Does a CUCUMBER appear when program is ran? <br>
**Test Steps:** 
1. Start the program 
2. Observe <br>
**Expected Outcome:** You see a CUCUMBER clearly on the screen.

**Test ID:** SysCucumber02 <br>
**Test Description:** Does the CUCUMBER move across the screen and then reappear at starting position? <br>
**Test Steps:**
1. Start the program 
2. Wait and observe <br>
**Expected Outcome:** You see a CUCUMBER clearly moving across the screen, then resetting once it goes off-screen.

**Test ID:** SysCucumber03 <br>
**Test Description:** Does the "JUMPING" mechanism work? <br>
**Test Steps:**
1. Start the program 
2. Click on, or next to the CUCUMBER <br>
**Expected Outcome:** The CUCUMBER does one jump, then continues moving.

**Test ID:** SysJudge01 <br>
**Test Description:** Does a JUDGE appear when program is ran? <br>
**Test Steps:**
1. Start the program 
2. Observe <br>
**Expected Outcome:** You see a JUDGE clearly on the screen.

**Test ID:** SysJudge02 <br>
**Test Description:** Does the "JUDGE walking" mechanism work? <br>
**Test Steps:**
1. Start the program 
2. Wait and observe <br>
**Expected Outcome:** You see the JUDGE walking left and right randomly, and not going off screen.

**Test ID:** SysJudge03 <br>
**Test Description:** Does the "JUDGE sitting" mechanism work? <br>
**Test Steps:**
1. Start the program 
2. Click ON the JUDGE <br>
**Expected Outcome:** You see the JUDGE stop moving, and it's seen to be sitting.

**Test ID:** SysJudge04 <br>
**Test Description:** Does the "JUDGE standing" mechanism work? <br>
**Test Steps:**
1. Start the program 
2. Click ON the JUDGE to make it sit
3. Click ON the JUDGE again <br>
**Expected Outcome:** You see the JUDGE stand back up and walk around randomly.

**Test ID:** SysJudge05 <br>
**Test Description:** Does the "JUDGE sitting" and "JUDGE standing" mechanism work? <br>
**Test Steps:**
1. Start the program 
2. Click NEXT to the JUDGE <br>
**Expected Outcome:** You see the JUDGE in its current state, clicking does not affect it.

## Coding Guidelines

General Java coding convention

**Variables:**

 - Use meaningful names for variables
 - Use variables instead of values where ever it makes sense to do so
 - Don't use variable names for something that it's not commonly associated with (eg. "x" for the y-axis position)
 - Lower case camelCase for variable names
 - Upper case CamelCase for classes
 - Upper case SNAKE_CASE for final variables/constants
 - Declare constant variables for values that do not need to change
 
 **Spacing:**
 - 4 space indentations (one Tab in processing)
 - Use spaces to improve readability, but do not overuse it (eg. 4 + x = 15, not 4+x=15)
 - Leave space between functions
 - Use brackets whenever possible to improve readability
 
 **Comments:**
 
 - Single-line comments to explain code
 - Multi-line comments to explain program or function or for references, etc.
 - Comment out code that is not being used but still might be needed
 
## Project Management

**To Do:**
- Design a background for the CUCUMBER animation
- Display a background in the CUCUMBER animation
- Create a program that shows JUDGE
- Animate the JUDGE
- Include some user interaction for the JUDGE
- Design a background for the JUDGE animation
- Display a background in the JUDGE animation

**In Progress:**
- Update ReadMe
- Design a sketch or image for JUDGE
- Complete interim report
- As a user, I want to see an animation of CUCUMBER, so that I can play with it
- Show and animation of JUDGE

**In Review:**
- Add the JUMPING animation to the CUCUMBER
- Implement user interaction with the CUCUMBER

We are on track to have the CUCUMBER animation finished by the end of week 7. 
It can be seen that most of the tasks for the JUDGE animation are still under the "To Do" section,
which does mean that no other progress, such as the coding of the animation, has been made for that animation.
This is due to the fact that the code for this animation can just be recycled from the CUCUMBER animation with
some tweaks and some extra function. So, as a group we are focusing on the CUCUMBER animation first, then once that
is finished, the animation for the JUDGE animation should not take much longer to complete.

Although, the team has been working collaboratively on all tasks,
Safwan and Michael have been given the responsibility for the JUMPING CUCUMBER animation,
while Amelia and Allen are responsible for the JUDGE animation. So any tasks for the CUCUMBER animation
or JUDGE animation are split up accordingly.

All code and tasks are mainly reviewed by Safwan as he has the most experience with coding,
however, we also make sure that the whole team is happy with the results before a task is 
marked as "Done."

Although we are on track to have the CUCUMBER animation finished by the end of week 7. We cannot
finish all the tasks by the mid-session break deadline. The JUDGE animation can easily be completed
over the break though, as most of the code can be recycled from the CUCUMBER animation with only the
design being something that could take any significant amount of time.