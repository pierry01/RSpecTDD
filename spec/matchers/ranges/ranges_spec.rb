describe (1..5), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(1, 2, 3, 4, 5)
  end
end