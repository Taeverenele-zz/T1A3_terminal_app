class User
    attr_reader :user_name, :user_password, :current_user
    def initialize(user_name, user_password, current_user)
        @user_name = user_name
        @user_password = user_password
        @current_user = current_user
    end
    
    def self.authenticateUser(username, password, list_of_users)
        attempts = 1
        while attempts < 4
            list_of_users.each do |user|
                if user[:name].delete(' ').downcase == username.delete(' ').downcase && user[:password].to_s == password
                    @current_user = user[:name]
                    return "Welcome back #{user[:name]}"
                end
            end
        errorMsg
        puts "Credentials were incorrect. Please try again: "
        attempts += 1
    end
    puts "You have exceeded the number of attempts" if attempts == 4
    end

    def self.checkIfNameExists(user_name, array)
        while array.include?(user_name)
            puts "Sorry, this username is taken, please choose another one: "
            user_name = gets.chomp
            break if !array.include?(user_name)
        end
        return "Welcome #{user_name}"
    end
end