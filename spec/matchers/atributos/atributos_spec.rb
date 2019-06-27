require 'pessoa'

describe 'Atributos' do
  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.nome = 'Jean'
    pessoa.idade = 21
    
    expect(pessoa).to have_attributes(nome: starting_with('J'), idade: (be >= 21))
  end
end