class Boilerplate
    attr_reader :boilerplate_name
    def initialize(boilerplate_name)
        @boilerplate_name = boilerplate_name
        # @array = array
    end

    def createNewBoilerplate
        print "What would you like to call this boilerplate: "
        boilerplate_name = gets.chomp
        CSV.open("users_saved_boilerplates.csv", "a+") do |csv|
            csv << boilerplate_name
        end
    end
end