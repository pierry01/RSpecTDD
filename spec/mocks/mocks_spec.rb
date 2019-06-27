require 'student'
require 'course'

describe 'Mocks' do
  it '#bar' do
    # setup 1
    student = Student.new
    
    # verify 3
    expect(student).to receive(:bar)
    
    # exercise 2
    student.bar
  end
end