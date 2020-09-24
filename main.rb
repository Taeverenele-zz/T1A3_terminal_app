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

system 'clear'
welcomeMsg

puts "Please enter your name"
name = gets.chomp
puts "Please enter your password"
password = gets.chomp
p user = User.new(name, password)
userHash = Hash.new
userHash[:name] = user.name
userHash[:password] = user.password
puts userHash
File.write("data.json", JSON.generate(userHash))