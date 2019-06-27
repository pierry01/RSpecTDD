RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1,2,3]), 'Array', type: 'collection' do
  # rspec . -t type:collection
  it '#include' do # Elementos separados do Array
    is_expected.to include(3,1,2)
  end
  
  it { is_expected.to exclude(4) }
  
  it '#contain_exactly' do # Contém exatamente os elementos
    is_expected.to contain_exactly(3,2,1)
  end
  
  it '#match_array' do # Exatamente igual ao Array
    is_expected.to match_array([1,2,3])
  end
end