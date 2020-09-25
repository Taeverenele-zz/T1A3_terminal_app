class User
    attr_reader :name, :password
    def initialize(user_name, user_password)
        @user_name = user_name
        @user_password = user_password
    end
    def self.alreadyUser?(arr, user_name)
        arr.each do |user|
            if user[:name] == user_name
                puts "Please enter your password: "
                user_password = gets.chomp
                if user[:password] == user_password
                    puts "Login successful"
                    exit
                else
                    puts "Incorrect password"
                end
            else
                puts "Cannot find username in system"
            end
        end
    end

    def self.checkIfNameExists(arr, user_name)
        newUserHash = {}
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
            newUserHash[:name] = user_name
            newUserHash[:password] = user_password
            exit
        end
    end
end