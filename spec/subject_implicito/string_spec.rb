require 'string_nao_vazia'

describe String do
  describe StringNaoVazia do
    it 'Não está vazia' do
      is_expected.to eq('Não sou vazio')
    end
  end
end