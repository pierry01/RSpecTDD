require 'student'
require 'course'

describe 'Mocks' do
  it '#bar' do
    student = Student.new # setup (1)
    expect(student).to receive(:bar) # verify (3)
    student.bar # exercise (2)
  end
  
  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with(123)
    student.foo(123)
  end
  
  it 'repetição' do
    # .once, .twice, .exactly(x).times, .at_least(x).times, .at_least(:once)
    student = Student.new
    expect(student).to receive(:foo).with(123).twice
    student.foo(123)
    student.foo(123)
  end
  
  it 'retorno' do
    # .once, .twice, .exactly(x).times, .at_least(x).times, .at_least(:once)
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return(true)
    student.foo(123)
  end
end