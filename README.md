# About the app

[Link to Github repository](https://github.com/Taeverenele/T1A3_terminal_app)

## Installation

Install using following steps

1. Install Ruby

[Click here to learn how depending on your device](https://www.ruby-lang.org/en/documentation/installation/)

2. Clone repo

``` git clone git@github.com:Taeverenele/T1A3_terminal_app.git ```

3. Change directories

``` cd <file name> ```

4. Run the shell script

``` ./run_app.sh ```

## Description

This application will create a new project folder for the user and depending on the project, will ask what additional files would the user like to have created. <br />
When user wants to start a new project, they will be prompted to name the project. Then an index.html file is created and added to their project folder.Then they can add the basic HTML scaffolding and change the title. User can also choose to add a CSS file and/or JavaScript file, in which case a styles.css and/or script.js file is created and linked to their index.html. <br />
I was unable to finish implementing my boilerplate methods, to be able to use or delete a boilerplate. At the moment a returning user is able to view their boilerplates and both first time user and a returning user can save a boilerplate. The extra functionality will be finished over the coming week. <br />
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

Finally the app will let you save the boilerplate created and give it a name. Next time user logs in, they have access to all saved boilerplates and can start a new project by just running a specific one. <br />
**This feature is not entirely finished**

# Functionality

**Current technology dependancies is that user needs to have VS Code to be able to open code through the app.**

The user can launch the app as an executable file or by running the file in the CLI. First thing the user sees is a welcome message followed by main menu options with a two second delay. 

![Welcome screen](../docs/Welcome.png)

If user is not a member, they will need to sign up. Currently just asking for name and password to be able to log in.

![New User Menu](../docs/new_user_menu.png)

If user chooses to start a new project, they are prompted for a project name, which will be the name of the folder created and will be the title of the index.html page created. If user enters the name of a folder that already exists in current directory, they are prompted to choose a different name.

![Name your project](../docs/name_project.png)

User can then say yes or no to adding CSS and JavaScript files and a message will be displayed with what was created depending on the user selections.

![Adding CSS and JavaScript](../docs/css_and_javascript.png)

User is than asked if they would like to open folder in VS Code and if they would like to open index.html in their browser

![Open in VS Code](../docs/VS_Code.png)
![Open in Browser](../docs/open_browser.png)

User is then asked if they would like to save the current setup to their boilerplates and if they say yes, then a boilerplate title is requested.

![Save boilerplate](../docs/save_boilerplate.png)

Message is displayed confirming that the boilerplate was saved and app is exited with a farewell message.

![Farewell message](../docs/farewell_message.png)

A returning user has a different menu displayed

![Returning user menu](../docs/returning_user.png)

When user chooses to view the boilerplates, all the names of the previously saved  boilerplates by this user are displayed with menu options for next step.

![View boilerplates](../docs/view_boilerplates.png)

As I was unable to finish my boilerplate manipulation feature, if user currently chooses any options from the boilerplate menu, an error message is displayed until user exits the menu.

![Boilerplate Error Message](../docs/boilerplate_error.png)

      


# Control Flow diagram

![Control Flow diagram](../docs/Terminal_app_v1.4.png)

# Trello board

![Trello board](../docs/trello.png)

[click here for Trello board link](https://trello.com/b/8L5jT4oW/terminal-app-v13)

# Testing

I did try and start with unit testing but found it difficult and time consuming not knowing what I was doing, so ended up doing manual testing instead.

![Testing page 1](../docs/testing_page_1.png)
![Testing page 2](../docs/testing_page_2.png)

# Author

**Nele Taevere**

[click here to view my Github](https://github.com/Taeverenele)
