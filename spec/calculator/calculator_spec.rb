require 'calculator'

describe Calculator do
  context '#div with' do # Usar {#} para testar erro
    it 'divided by 0' do
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError)
      expect{subject.div(3, 0)}.to raise_error('divided by 0')
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError, 'divided by 0')
      expect{subject.div(3, 0)}.to raise_error(/divided/)
    end
  end
  
  context '#sum with' do
    it 'positive numbers' do
      result = subject.sum(5, 5)
      expect(result).to eq(10)
    end
    
    it 'negative and positive numbers' do
      result = subject.sum(-5, 7)
      expect(result).to eq(2)
    end
    
    it 'negative numbers' do
      result = subject.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end
end