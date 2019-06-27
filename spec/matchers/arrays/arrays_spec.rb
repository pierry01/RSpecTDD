describe Array.new([1,2,3]), 'Array' do
  it '#include' do # Elementos separados do Array
    expect(subject).to include(3,1,2)
  end
  
  it '#contain_exactly' do # Contém exatamente os elementos
    expect(subject).to contain_exactly(3, 2, 1)
  end
  
  it '#match_array' do # Exatamente igual ao Array
    expect(subject).to match_array([1,2,3])
  end
end