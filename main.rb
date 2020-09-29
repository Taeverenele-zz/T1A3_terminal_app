require 'tty-prompt'
require 'json'
require 'erb'
require_relative './user'
require_relative './folder'
require_relative './methods/methods'
require_relative './exceptions/exceptions'

app_on = true
users_array = []
add_files_array = []
all_folders = []

welcomeMsg
sleep 2
while app_on

    prompt = TTY::Prompt.new(symbols: {marker: '►'})
    user_menu_input = prompt.select("What would you like to do?") do |menu|
        menu.choice 'Start a new project', 1
        menu.choice 'Help', 2
        menu.choice 'Exit', 4
    end

    case user_menu_input
    when 1
        folder = Folder.new(@folder_name)
        folder.createFolder
        folder.addCSS?
        folder.addJavaScript?
        folder.writeFile
    when 2
        system"clear"
        help
        puts ''
    when 4
        system"clear"
        app_on = false
    end
    
    # File.foreach("../template.txt") do |line| 
    #     File.open("index.html", "a") do |f|
    #         folder_title = folder.folder_name.split('_').map(&:capitalize)*' '
    #         if line.include?('<title>')
    #             if folder.all_files.include?('styles') && folder.all_files.include?('script')
    #                 f.write "\t<title>#{folder_title}</title>\n"
    #                 f.write "\t<link rel='stylesheet' href='style.css'>\n"
    #                 f.write "\t<script src='script.js'></script>\n"
    #             elsif folder.all_files.include?('styles') && !folder.all_files.include?('script')
    #                 f.write "\t<title>#{folder_title}</title>\n"
    #                 f.write "\t<link rel='stylesheet' href='style.css'>"
    #             elsif folder.all_files.include?('script') && !folder.all_files.include?('styles')
    #                 f.write "\t<title>#{folder_title}</title>\n"
    #                 f.write "\t<script src='script.js'></script>"
    #             else
    #                 f.write "\t<title>#{folder_title}</title>"
    #             end
    #         else
    #             f.write line
    #         end
    #     end
    # end

    # system("code .")
    
    # system("open ./index.html")
end

# while app_on

#     system 'clear'
#     welcomeMsg
#     prompt = TTY::Prompt.new(symbols: {marker: '►'})
#     user_menu_input = prompt.select("Main Menu") do |menu|
#         menu.choice 'Sign In', 1
#         menu.choice 'Sign Up', 2
#         menu.choice 'Help', 3
#         menu.choice 'Exit', 4
#     end
#     case user_menu_input
#     when 1
#         attempts = 1
#         while attempts < 4
#             print "Username: "
#             username = gets.chomp
#             print "Password: "
#             password = gets.chomp
#             puts User.authenticateUser(username, password, users_array)

#             puts "Press n to quit or any other key to continue: "
#             input = gets.chomp.downcase
#             break if input == "n"
#             attempts += 1
#         end
#         puts "You have exceeded the number of attempts" if attempts == 4
#     when 2
#         puts "Please enter a username: "
#         user_name = gets.chomp
#         puts User.checkIfNameExists(users_array, user_name)
#         newUser = {}
#         newUser[:name] = user_name
#         puts "Please enter a password: "
#         password = gets.chomp
#         newUser[:password] = password
#         users_array << newUser
#         File.open("data.json", "w") do |f|
#             f.write(users_array.to_json)
#         end
#     when 3
#         puts "More information about this app"
#     when 4
#         system("clear")
#         app_on = false
#     end
# end
