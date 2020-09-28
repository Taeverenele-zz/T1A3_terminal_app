require_relative '../user'
require_relative '../folder'

# describe User do
#     it 'should return the name of the user' do
#         name = 'Nele'
#         password = '123password'
#         user = User.new(name, password)
#         expect(user.name).to eq(name)
#     end
#     it 'should return the password of the user' do
#         name = 'Nele'
#         password = '123password'
#         user = User.new(name, password)
#         expect(user.password).to eq(password)
#     end
# end

describe Folder do
    it 'should return the name of the folder' do
        folder_name = 'Example'
        folder = Folder.new(folder_name)
        expect(folder.folder_name).to eq(folder_name)
    end
end