# About the app

## Description

This application will create a new project folder for the user and depending on the project, will ask what additional files would the user like to have created. To start with, the user is given a choice between two possible starting points: a HTML file or a Ruby file. <br />
If user asks to create HTML file, an index.html file is created and added to their project folder.Then they can add the basic HTML scaffolding and change the title. User can also choose to add a CSS file and/or JavaScript file, in which case a styles.css and/or script.js file is created and linked to their index.html. Additionally, user can add libraries to their HTML file such as Bootstrap, Normalize, Google Fonts (with their selected font for their project) etc. When user has finished creating and adding features, they are prompted to save their boilerplate for future use. User can save as many boilerplates as they wish.

## Problem this app will solve

This app will create all files needs to get started on a new project. Initially, user is limited to only create a HTML or Ruby file, but in the future I will hopefully expand this app to be able to create project using other languages such as Rails, React, Python etc. Once user has saved their boilerplate, it then become even easier to create their project. This app will not only make the process of starting a project easier, but also eliminates the user having to remember how to link files or having to Google how it is done. 

Being a developer myself, I identified this to be a necessary step for every project and in creating this app I am hoping it will not only help me be more efficient in the future, but all other developers.

## Target Audience

This app is created for every developer who would like to quickly and efficiently build a file system for their new project. Basic understanding of HTML, CSS, JavaScript and/or Ruby is necessary.

## How will this app be used

This app is completely run in the terminal and it asks the user a number of questions to customise their boilerplate. App will make use of 'tty-prompt' gem and user will navigated through multiple choice options which are accessible with up and down arrows and the enter button. Should an add on require any doownloads, the user gets prompted with a warning. 

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

On commencing the application user is welcomed and a short description of the app is displayed. <br />
User is prompted type in 'help' to get a more detailed description of the application or 'start' to start the app.<br />
Next the user is asked if they are ready to create a new project (yes/no).<br />
    No ==> Displays a farewell message and exits the app. <br />
    Yes ==> User is asked if they already have an account (yes/no) <br />
        No ==> In order to start a new project, please create an account. <br />
            User is prompted to enter a username and password and navigated to the next page. <br .>
        Yes ==> User is asked to sign in. <br />
            User is asked to enter a username and password. <br />
            User is asked what they would like to do in a form of select menu. <br />
                View my boilerplates ==> Will display names of the previously created boilerplates. And a list of options: <br />
                    View boilerplate ==> Would prompt the user to enter the name of the boilerplate. <br />
                    Change the name of the boilerplate ==> Asks user which bouler plate they would like to change and the new name. <br />
                    Delete a boilerplate ==> Asks user which boilerplate they would like to delete and propmpts them to confirm they want to delete this boilerplate. <br />
                    Go to previous page ==> navigates back to previous page. <br /> 
                Start a new project ==> Takes the user to the next page to name the new project folder. <br />
                Sign out ==> Farewell message is displayed and app exited. <br />
            User is prompted to name the project folder and moved into the folder.<br />
            User is presented with a choice of HTML file or a Ruby file.<br />
                Ruby ==> 
                HTML ==> creates index.html file<br />
                Asks user if they would like to insert the basic HTML scaffolding to get started.<br />
                    No ==> Without the basic HTML we are unable to link other files, therefore no further files can be created. Are you sure you want to exit the app (yes/no). <br />
                        Yes ==> Before you exit, would you like to save this boilerplate? (yes/no). <br />
                            No ==> Displays a farewell message and exits the app. <br />
                            Yes ==> Prompts user to give the boilerplate a name. Boilerplate is saved in a json file. Farewell message is displayed and exits the app. <br />
                        No ==> Asks user again if they would like to insert basic scaffolding. <br />
                    Yes ==> Basic scaffolding is added to index.html. <br />
                    User is asked if they would like to give their index.html title a name. <br />
                        Yes ==> User is asked to give a name and index.html is updated accordingly. <br />
                        No ==> User is told that by default the title will be called Document. <br />
                    User is given a choice of files they would like to add in a form of check boxes: CSS, JavaScript or None. <br />
                        CSS ==> styles.css file is created and liked to the HTML file. <br />
                        JavaScript ==> script.js file is created and linked to the HTML file. <br />
                        None ==> Before you exit, would you like to save this boilerplate? (yes/no). <br />
                            No ==> Displays a farewell message and exits the app. <br />
                            Yes ==> Prompts user to give the boilerplate a name. Boilerplate is saved in a json file. Farewell message is displayed and exits the app. <br />
                        User is given a choice of popular libraries they would like to add in a form of check boxes: Bootstrap, Semantic UI, Google Fonts or None. <br />
                            Bootstrap ==> Bootstrap in linked to your HTML file. <br />
                            Semantic UI ==> Semantic UI is linked to your HTML file. <br />
                            Google Fonts ==> User is prompted to enter a Google Font they would like to add, then the a link is added to HTML file and the body element in styles.css gets given a font-family with the specified font.
                            None ==> No extra add ons will be created and user is navigated to the next page. <br />
                                User is advised that the boilerpate has been created and asks if they would like to do next in a form of check boxes. They can do only one, some or all of the following: <br />
                                    Save boilerplate ==> User is asked to name the boilerpate. Boilerpate is saved in a json file. <br />
                                    Open the boilerpate code editor ==> Opens the boilerpate in VS Code. <br />
                                    Initialise a local Git Repository ==> Runs Git Init, Git add -a and git commit -m 'Initial commit'. <br />
                                    Start another project ==> Goes back to the beginning of the app where user was asked to name the project folder. <br />
                                    Exit app ==> Farewell message is displayed and app is exited. <br />


            
Current technology dependancies is that user needs to have VS Code to be able to open code through the app.