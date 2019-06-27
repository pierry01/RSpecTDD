require 'pessoa'

describe 'Atributos' do
  let(:pessoa) { Pessoa.new }

  it 'have_attributes' do
    pessoa.nome = 'Jean'
    pessoa.idade = 21
    
    expect(pessoa).to have_attributes(nome: starting_with('J'), idade: (be >= 21))
  end
  
  it 'have_attributes' do
    pessoa.nome = 'Junfo'
    pessoa.idade = 25
    
    expect(pessoa).to have_attributes(nome: starting_with('J'), idade: (be >= 21))
  end
end