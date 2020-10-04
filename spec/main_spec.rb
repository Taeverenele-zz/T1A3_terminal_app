require_relative '../classes/user'
require_relative '../classes/folder'

describe User do
    it 'should return the name of the user' do
        user_name = 'Nele'
        user_password = '123password'
        current_user = 'Nele'
        user = User.new(user_name, user_password, current_user)
        expect(user.user_name).to eq(user_name)
    end
    it 'should return the password of the user' do
        user_name = 'Nele'
        user_password = '123password'
        current_user = 'Nele'
        user = User.new(user_name, user_password, current_user)
        expect(user.user_password).to eq(user_password)
    end
end

describe Folder do
    it 'should return the name of the folder' do
        folder_name = 'Example'
        folder = Folder.new(folder_name)
        expect(folder.folder_name).to eq(folder_name)
    end
end