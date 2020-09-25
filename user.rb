class User
    attr_reader :name, :password
    def initialize(user_name, user_password)
        @user_name = user_name
        @user_password = user_password
    end

end