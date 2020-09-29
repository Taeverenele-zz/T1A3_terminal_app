require 'tty-prompt'
require 'tty-font'
require 'tty-box'
require 'pastel'

def welcomeMsg
    font = TTY::Font.new(:starwars)
    pastel = Pastel.new
    puts pastel.bright_yellow(font.write("HTML"))
    puts pastel.bright_magenta(font.write("BOILERPLATE"))
    puts pastel.bright_red(font.write("GERENATOR"))
    # box = TTY::Box.frame "Welcome to the", "#{title1}", "#{title2}", "#{title3}", padding: 5, align: :center 
    # print box
end
def help
    pastel = Pastel.new
    puts pastel.green("This is a helpful app that helps you generate a new project folder")
    puts pastel.green("and customise which files you would like to have added in that folder.")
    puts pastel.green("It's really easy, just follow the steps and make your choices. :)")
    prompt = TTY::Prompt.new
    prompt.keypress("Press any key to go back to main menu, resumes automatically in :countdown ...", timeout: 10)
end
def errorMsg
    puts"
        _______________
       | _____________ |
       | |  ERROR,   | |
       | | TRY AGAIN | |
       | |___________| |
       \=_____________=/      
       / ''''''''''''' \\                         
      / ::::::::::::::: \\                  
     (___________________)"
end