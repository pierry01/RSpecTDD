describe 'Test Double' do
  it '#' do
    user = double('User')
    allow(user).to receive_messages(name: 'Jean', password: 'secret')
    puts user.name
    puts user.password
  end
  
  it '##' do
    user = double('User')
    allow(user).to receive(:name).and_return('Jean')
    allow(user).to receive(:password).and_return('secret')
    puts user.name
    puts user.password
  end
end