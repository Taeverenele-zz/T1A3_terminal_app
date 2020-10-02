require_relative './user'


class Boilerplate
    attr_reader :boilerplate_name, :new_boilerplate_array
    def initialize(current_user, boilerplate_name)
        @current_user = current_user
        @boilerplate_name = boilerplate_name
    end

    def createNewBoilerplate


    end
end