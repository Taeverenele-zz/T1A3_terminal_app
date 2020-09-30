# About the app

## Description

This application will create a new project folder for the user and depending on the project, will ask what additional files would the user like to have created. To start with, the user is given a choice between two possible starting points: a HTML file or a Ruby file. <br />
If user asks to create HTML file, an index.html file is created and added to their project folder.Then they can add the basic HTML scaffolding and change the title. User can also choose to add a CSS file and/or JavaScript file, in which case a styles.css and/or script.js file is created and linked to their index.html. 
(Additionally, user can add libraries to their HTML file such as Bootstrap, Normalize, Google Fonts (with their selected font for their project) etc. When user has finished creating and adding features, they are prompted to save their boilerplate for future use. User can save as many boilerplates as they wish.)

## Problem this app will solve

This app will create all files needs to get started on a new project. Initially, user is limited to only create a HTML or Ruby file, but in the future I will hopefully expand this app to be able to create project using other languages such as Rails, React, Python etc. Once user has saved their boilerplate, it then become even easier to create their project. This app will not only make the process of starting a project easier, but also eliminates the user having to remember how to link files or having to Google how it is done. 

Being a developer myself, I identified this to be a necessary step for every project and in creating this app I am hoping it will not only help me be more efficient in the future, but all other developers.

## Target Audience

This app is created for every developer who would like to quickly and efficiently build a file system for their new project. Basic understanding of HTML, CSS, JavaScript and/or Ruby is necessary.

## How will this app be used

This app is completely run in the terminal and it asks the user a number of questions to customise their boilerplate. App will make use of 'tty-prompt' gem and user will navigated through multiple choice options which are accessible with up and down arrows and the enter button. 
(Should an add on require any doownloads, the user gets prompted with a warning. )

# Features

## Creates folders and files necessary to the users specific needs

By asking user questions about what files and folders they will need to get started with their project, the app will create the folders and files and link them as necessary.

## Offers additional popular add ons

Suggests adding popular libraries to the project such as Bootstrap, Semantic UI, Foundations, Google Fonts, Font Awesome etc. when working with HTML and CSS. If making a Ruby project, offers to do bundle init, bundle install and if there are any specific gems the user would like installed.

## Run local repository

If user wishes to do so, the app will run Git Init and add files with the first git commit.

## Saves user's boilerplate

Finally the app will let you save the boilerplate created and give it a name. Next time user logs in, they have access to all saved boilerplates and can start a new project by just running a specific one. Hopefully will also be able to edit saved boilerplates.

# Functionality

By using TTY-Prompt gem I am making it easy for user to be able to navigate through the app and have minimal user text input. This is also making error handling easier, as I don't have to check on every step if the user has entered the correct value. For the errors I have identified, there will be a number of different error handling in the project:
 - an ascii art error message for when the user has entered the wrong value in some cases
 - an infinite loop where user's input throws an error and user is prompted to try again
 - raising exeptions where necessary

 TTY-Prompt also has a handy feature of explaining to the user how to nagivate through the menu (for example, when up and down arrows are to be used, or which button to press to enter chosen step). In the main menu there is also a 'help' option which will give the user more thorough explanation as to what the app is for. 

            
Current technology dependancies is that user needs to have VS Code to be able to open code through the app.