class User
    attr_reader :user_name, :user_password
    def initialize(user_name, user_password)
        @user_name = user_name
        @user_password = user_password
    end
    
    def self.authenticateUser(list_of_users)
        attempts = 1
        while attempts < 4
            print "Username: "
            username = gets.chomp
            print "Password: "
            password = gets.chomp
            # list_of_users = SmarterCSV.process("users_data.csv")
            list_of_users.each do |user|
                if user[:name].delete(' ').downcase == username.delete(' ').downcase && user[:password].to_s == password
                    return "Welcome back #{user[:name]}"
                end
            end
        errorMsg
        puts "Credentials were incorrect. Please try again: "
        attempts += 1
    end
    puts "You have exceeded the number of attempts" if attempts == 4
    end

    def self.checkIfNameExists(array)
        loop do 
            print "Username: "
            user_name = gets.chomp
            # .split(' ').map(&:capitalize)*' '
                if !array.include?(user_name.downcase.delete(' '))
                    print "Password: "
                    user_password = gets.chomp
                    new_user = User.new(user_name, user_password)
                    new_user_array = [new_user.user_name.split(' ').map(&:capitalize)*' ', new_user.user_password]
                    CSV.open("users_data.csv", "a+") do |csv|
                        csv << new_user_array
                    end
                    return "Welcome #{user_name}"
                end
            puts "Sorry, this username is taken, please choose another one: "
        end
    end
end