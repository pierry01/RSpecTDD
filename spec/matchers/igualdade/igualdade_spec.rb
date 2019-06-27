describe 'Matchers de Igualdade' do
  it '#equal - testa se é o mesmo objeto' do
    x = 'Ruby'
    y = 'Ruby'
    expect(x).not_to equal(y)
    expect(x).to equal(x)
  end
  
  it '#be - testa se é o mesmo objeto' do
    x = 'Ruby'
    y = 'Ruby'
    expect(x).not_to be(y)
    expect(x).to be(x)
  end
  
  it '#eql - testa se é o mesmo valor' do
    x = 'Ruby'
    y = 'Ruby'
    expect(x).to eql(y)
  end
  
  it '#eq - testa se é o mesmo valor' do
    x = 'Ruby'
    y = 'Ruby'
    expect(x).to eq(y)
  end
end