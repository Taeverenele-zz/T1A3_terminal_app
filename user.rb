class User
    attr_reader :name, :password
    def initialize(user_name, user_password)
        @user_name = user_name
        @user_password = user_password
    end
    
    def self.authenticateUser(username, password, list_of_users)
        list_of_users.each do |user|
            if user[:name] == username && user[:password] == password
                return user
            end
        end
        return "Credentials were not correct"
    end

    def self.checkIfNameExists(arr, user_name)
        arr.each do |user|
            loop do 
                if user[:name] == user_name
                    puts "Sorry, this username is taken, please choose another one: "
                    user_name = gets.chomp
                end
                break if user[:name] != user_name
            end
        end
    end
end