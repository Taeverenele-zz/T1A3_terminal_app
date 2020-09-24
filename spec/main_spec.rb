require_relative '../user'

describe User do
    it 'should return the name of the user' do
        name = 'Nele'
        password = '123password'
        user = User.new(name, password)
        expect(user.name).to eq(name)
    end
end