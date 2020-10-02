require_relative './user'
require 'csv'
require 'smarter_csv'
@@boilerplate_array = SmarterCSV.process("users_saved_boilerplates.csv")

class Boilerplate
    attr_reader :boilerplate_name, :new_boilerplate_array
    def initialize(current_user, boilerplate_name)
        @current_user = current_user
        @boilerplate_name = boilerplate_name
    end

    def self.viewBoilerplates(user)
        @@boilerplate_array.each do |boilerplate| 
            if boilerplate[:current_user].delete(' ').downcase == user.delete(' ').downcase
                puts boilerplate[:boilerplate_name]
            end
        end
    end
    def deleteBoilerplate(name)
        @@boilerplate_array.map do |boilerplate|
            if boilerplate[:current_user] == user && boilerplate[:boilerplate_name] == name

            end
        end
    end
end