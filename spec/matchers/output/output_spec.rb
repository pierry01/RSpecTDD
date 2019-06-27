describe 'Matcher output' do
  it { expect{puts 'Jean'}.to output.to_stdout }
  it { expect{print 'Jean'}.to output('Jean').to_stdout }
  it { expect{print 'Jean Pierry'}.to output(/Jean/).to_stdout }
  
  it { expect{warn 'Jean'}.to output.to_stderr }
  it { expect{warn 'Jean'}.to output("Jean\n").to_stderr }
  it { expect{warn 'Jean Pierry'}.to output(/Jean/).to_stderr }
end