class EmptyStringError < StandardError
    def initialize(msg="Input cannot be an empty string!")
        super(msg)
    end
end