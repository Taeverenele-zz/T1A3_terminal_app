require 'artii'
require 'tty-prompt'
require 'json'
require_relative './user'

app_on = true

users_array = [
    {name: 'Nele',
    password: '123456'},
    {name: 'John',
    password: 'qwerty'}
]

    def welcomeMsg
        welcome = Artii::Base.new
        puts welcome.asciify('HTML Boilerpate Creator')
        puts "***********************************************************************************************************************"
        puts "Welcome to the HTML Boilerplate creator,"
        puts  "where we will help you set up an HTML file specific to your project needs!"
        puts
        # puts "If you would like to learn more about this app before continuing, "
        # puts "please type 'help' otherwise type 'start' to start creating your first boilerplate!"
        # user_input = gets.chomp
        #     if user_input == "help"
        #         puts "More infor about the app"

        #     else user_input == "start"
        #         puts "Ok lets get going"
        #     end

    end



    while app_on

        system 'clear'
        welcomeMsg
        prompt = TTY::Prompt.new(symbols: {marker: '►'})
        user_menu_input = prompt.select("Main Menu") do |menu|
            menu.choice 'Sign In', 1
            menu.choice 'Sign Up', 2
            menu.choice 'Help', 3
            menu.choice 'Exit', 4
        end
        case user_menu_input
        when 1
            puts "Please enter your username: "
            user_name = gets.chomp
            User.alreadyUser?(users_array, user_name)
        when 2
            puts "Please enter a username: "
            user_name = gets.chomp
            User.checkIfNameExists(users_array, user_name)
        when 3
            puts "More information about this app"
        when 4
            system("clear")
            app_on = false
        end
    end

    # puts "Are you already a member? (yes/no)"
    # user_input = gets.chomp
    # if user_input == 'yes'
    #     puts "Please enter your name: "
    #     user_name = gets.chomp
        
    # else

        
    # end
    # puts 'hello'

# end







# puts "Please enter your name"
# name = gets.chomp
# puts "Please enter your password"
# password = gets.chomp
# p user = User.new(name, password)
# userHash = Hash.new
# userHash[:name] = user.name
# userHash[:password] = user.password
# p userHash
# rb_hash = JSON.parse("data.json")
# rb_hash.to_json
# rb_hash["data"] << userHash


# array = []
# array << userHash
# File.open("data.json", "a") do |f|
#     f.write(array.to_json + ', ')
# end
# File.open("data.json", "a") {|f| f.write(JSON.pretty_generate(userHash))}