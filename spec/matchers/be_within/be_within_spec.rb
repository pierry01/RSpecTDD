RSpec::Matchers.define_negated_matcher :be_not_within, :be_within

describe 'be_within' do
  it { expect(13.5).to be_within(0.5).of(13) }
  # 12.5 - 12.6 - 12.7 - 12.8 - 12.9 - of(13) - 13.1 - 13.2 - 13.3 - 13.4 - 13.5
  
  it { expect(13.6).to be_not_within(0.5).of(13) }
  # Fora do range com o be_not_within

  it { expect([11.6, 12.1, 12.4]).to all(be_within(0.5).of(12)) }
  # 11.5 - 11.6 - 11.7 - 11.8 - 11.9 - of(12) - 12.1 - 12.2 - 12.3 - 12.4 - 12.5
end