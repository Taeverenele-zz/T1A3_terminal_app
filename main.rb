require 'tty-prompt'
require 'csv'
require 'erb'
require 'smarter_csv'
require_relative './classes/user'
require_relative './classes/folder'
require_relative './methods/methods'
require_relative './exceptions/exceptions'
require_relative './classes/boilerplate'

users_array = SmarterCSV.process("users_data.csv")
boilerplate_array = SmarterCSV.process("users_saved_boilerplates.csv")
p boilerplate_array
names_array = []
users_array.map{|user| names_array << user[:name].downcase.delete(' ')}

app_on = true
add_files_array = []
all_folders = []


welcomeMsg
# sleep 2
while app_on
    prompt = TTY::Prompt.new(symbols: {marker: '►'})
    user_menu_input = prompt.select("What would you like to do?") do |menu|
        menu.choice 'Signup', 1
        menu.choice 'Login', 2
        menu.choice 'Help', 3
        menu.choice 'Exit', 4
    end
    case user_menu_input 
    # New user sign up
    when 1
        system"clear"
        print "Username: "
        user_name = gets.chomp
        puts User.checkIfNameExists(user_name, names_array)
        print "Password: "
        user_password = gets.chomp
        user = User.new(user_name, user_password, user_name)
        new_user_array = [user_name.split(' ').map(&:capitalize)*' ', user_password]
        CSV.open("users_data.csv", "a+") do |csv|
            csv << new_user_array
        end
        user_menu_input = prompt.select("What would you like to do next?") do |menu|
            menu.choice 'Start a new project', 1
            menu.choice 'Exit', 2
        end
        case user_menu_input
        # New user starting a new project
        when 1
            folder = Folder.new(@folder_name)
            folder.createFolder
            folder.addCSS?
            folder.addJavaScript?
            folder.writeFile
            user_menu_input = prompt.select("Would you like to open folder in VS Code?") do |menu|
                menu.choice 'Yes', 1
                menu.choice 'No', 2
            end
            case user_menu_input
            when 1
                system("code .")
            when 2
                
            end
            user_menu_input = prompt.select("Would you like to open index.html in your browser?") do |menu|
                menu.choice 'Yes', 1
                menu.choice 'No', 2
            end
            case user_menu_input
            when 1
                system("open ./index.html")
            when 2
                
            end               
             user_menu_input = prompt.select("Would you like to save current project in your boilerplates?") do |menu|
                menu.choice 'Yes', 1
                menu.choice 'No', 2
            end
            case user_menu_input
            when 1
                Dir.chdir("..")
                print "What would you like to call this boilerplate: "
                boilerplate_name = gets.chomp
                boilerplate = Boilerplate.new(user.current_user, boilerplate_name)
                new_boilerplate_array = [user.current_user, boilerplate_name]
                CSV.open("users_saved_boilerplates.csv", "a+") do |csv|
                    csv << new_boilerplate_array + folder.all_files.to_a
                end
            when 2
                puts "Thank you for visiting."
                puts "See you again soon!"
                sleep 1
                farewellMsg
                app_on = false
            end
        when 2
        end
    # Existing user log in
    when 2
        system"clear"
        puts User.authenticateUser(users_array)
        user_menu_input = prompt.select("What would you like to do next?") do |menu|
            menu.choice 'Start a new project', 1
            menu.choice 'View your boilerplates', 2
            menu.choice 'Delete a boilerplate', 3
            menu.choice 'Exit', 4
        end
        case user_menu_input
        # Existing user start a new project
        when 1
            folder = Folder.new(@folder_name)
            folder.createFolder
            folder.addCSS?
            folder.addJavaScript?
            folder.writeFile
        # Existing user view saved boilerplates
        when 2
        # Existing user delete saved boilerplate
        when 3
        # Exit the app
        when 4
            system"clear"
            farewellMsg
            app_on = false
        end
    # Display help message
    when 3
        system"clear"
        help
    # Exit the app
    when 4
        system"clear"
        farewellMsg
        app_on = false
    end
end

