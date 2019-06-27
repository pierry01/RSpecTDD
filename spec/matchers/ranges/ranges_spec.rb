describe (1..5), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(1, 2, 3, 4, 5)
  end
  
  # expect(subject) = is_expected
  it { is_expected.to cover(2) }
  it { is_expected.to cover(1, 2, 3, 4, 5) }
end