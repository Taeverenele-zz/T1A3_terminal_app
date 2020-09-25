require 'artii'
require 'tty-prompt'
require 'json'
require_relative './user'

def welcomeMsg
    welcome = Artii::Base.new
    puts welcome.asciify('HTML Boilerpate Creator')
    puts "***********************************************************************************************************************"
    puts "Welcome to the HTML Boilerplate creator,"
    puts  "where we will help you set up an HTML file specific to your project needs!"
    puts
    puts "If you would like to learn more about this app before continuing, "
    puts "please type 'help' otherwise type 'start' to start creating your first boilerplate!"
    # user_input = gets.chomp
    #     if user_input == "help"
    #         puts "More infor about the app"

    #     else user_input == "start"
    #         puts "Ok lets get going"
    #     end

end


users_array = [
    {name: 'Nele',
    password: '123456'},
    {name: 'John',
    password: 'qwerty'}
]
system 'clear'
welcomeMsg
users_array.each do |user|
    puts user[:name]
end
def alreadyUser?(arr, user_name)
    arr.each do |user|
        if user[:name] == user_name
            puts "Please enter your password: "
            user_password = gets.chomp
            if user[:password] == user_password
                puts "Login successful"
                exit
            else
                puts "Incorrect password"
                exit
            end
        else
            puts "Cannot find username in system"
        end
    end
end

def checkIfNameExists(arr, user_name)
    arr.each do |user|
        loop do 
            if user[:name] == user_name
                puts "Sorry, this username is taken, please choose another one: "
                user_name = gets.chomp
            end
            break if user[:name] != user_name
        end
        puts "Please enter a password"
        user_password = gets.chomp
        exit
    end
end
puts "Are you already a member? (yes/no)"
user_input = gets.chomp
if user_input == 'yes'
    puts "Please enter your name: "
    user_name = gets.chomp
    alreadyUser?(users_array, user_name)
else
    puts "Please enter a username: "
    user_name = gets.chomp
    checkIfNameExists(users_array, user_name)
end







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