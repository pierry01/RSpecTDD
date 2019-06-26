require 'calculator'

describe Calculator do
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