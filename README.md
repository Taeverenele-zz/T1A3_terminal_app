# About the app

## Description

This application will create a new project folder for the user and depending on the project, will ask what additional files would the user like to have created. <br />
When user wants to start a new project, they will be prompted to name the project. Then an index.html file is created and added to their project folder.Then they can add the basic HTML scaffolding and change the title. User can also choose to add a CSS file and/or JavaScript file, in which case a styles.css and/or script.js file is created and linked to their index.html. <br />
Given more time and knowledge, I would have liked to implement a selection of languages the user can choose from and additional add ons like Bootstrap, Normalize, Semantic UI, Google Fonts etc. <br />

## Problem this app will solve

This app will create all files needs to get started on a new project. Initially, user is limited to only create a HTML file, but in the future I will hopefully expand this app to be able to create project using other languages such as Ruby, Rails, React, Python etc. Once user has saved their boilerplate, it then become even easier to create their project. This app will not only make the process of starting a project easier, but also eliminates the user having to remember how to link files or having to Google how it is done. 

Being a developer myself, I identified this to be a necessary step for every project and in creating this app I am hoping it will not only help me be more efficient in the future, but all other developers.

## Target Audience

This app is created for every developer who would like to quickly and efficiently build a file system for their new project. Basic understanding of HTML, CSS, JavaScript and/or Ruby is necessary.

## How will this app be used

In order to run this app, the gems need to be installed that I have made use of. This can be done by either typing 'bundle install' or './run_app.sh' which will download all necessary dependencies for you.

The app is mainly run in the terminal. There is an option to have your index.html file opened in the browser, and in doing so internet connection is required. App makes extesive use of TTY-Prompt to help user navigate through a number of multiple choice menus in order to customise their boilerplate. When user is asked for text input (username, password, naming folder and boilerplate), other than the password, which needs to match perfectly, the other inputs are not case sensitive to make the app less likely to throw an error.

# Features

## User authentication

When app first starts, user is prompted to either login or signup. User authentication feature was created so that user is able to save the boilerplate and view saved boilerplates.

## Creates folders and files necessary to the users specific needs

By asking user questions about what files and folders they will need to get started with their project, the app will create the folders and files and link them as necessary.

## Run local repository

If user wishes to do so, the app will run Git Init and add files with the first git commit.

## Saves user's boilerplate

Finally the app will let you save the boilerplate created and give it a name. Next time user logs in, they have access to all saved boilerplates and can start a new project by just running a specific one. 

# Functionality

The user can launch the app as an executable file or by running the file in the CLI. First thing the user sees is a welcome message followed by main menu options with a two second delay. 

By using TTY-Prompt gem I am making it easy for user to be able to navigate through the app and have minimal user text input. This is also making error handling easier, as I don't have to check on every step if the user has entered the correct value. For the errors I have identified, there will be a number of different error handling in the project:
 - an ascii art error message for when the user has entered the wrong value in some cases
 - an infinite loop where user's input throws an error and user is prompted to try again
 - raising exeptions where necessary

 TTY-Prompt also has a handy feature of explaining to the user how to nagivate through the menu (for example, when up and down arrows are to be used, or which button to press to enter chosen step). In the main menu there is also a 'help' option which will give the user more thorough explanation as to what the app is for. Also running -h or --help as a command line argument after the file name, a helpful message is displayed as to what the app does. 
      
**Current technology dependancies is that user needs to have VS Code to be able to open code through the app.**

# Control Flow diagram


# Trello board

