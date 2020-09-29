require 'tty-prompt'
require 'tty-font'
require 'tty-box'

def welcomeMsg
    font = TTY::Font.new(:starwars)
    title1 = font.write("HTML")
    title2 = font.write("BOILERPLATE")
    title3 = font.write("GERENATOR")
    box = TTY::Box.frame "Welcome to the", "#{title1}", "#{title2}", "#{title3}", padding: 5, align: :center 
    print box
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