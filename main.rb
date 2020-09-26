require 'artii'
require 'tty-prompt'
require 'json'
require_relative './user'
require_relative './methods/methods'


app_on = true

users_array = []

def welcomeMsg
    welcome = Artii::Base.new
    puts welcome.asciify('HTML Boilerpate Creator')
    puts "***********************************************************************************************************************"
    puts "Welcome to the HTML Boilerplate creator,"
    puts  "where we will help you set up an HTML file specific to your project needs!"
    puts
end

while app_on

    prompt = TTY::Prompt.new(symbols: {marker: '►'})
    user_menu_input = prompt.select("Main Menu") do |menu|
        menu.choice 'Start', 1
        menu.choice 'Exit', 4
    end

    case user_menu_input
    when 1
        print "Name your project folder: "
        folder_name = gets.chomp
        system "mkdir #{folder_name}"
        Dir.chdir("#{folder_name}")
        system("touch index.html") 
    when 4
        system("clear")
        app_on = false
    end
    
    File.foreach("../template.html.erb") do |line| 
        File.open("index.html", "a") do |f|
            f.write line
        end
    end

    puts ""

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
