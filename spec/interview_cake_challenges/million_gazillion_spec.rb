require 'rspec'
require_relative '../../interview_cake_challenges/million_gazillion'

describe '#visited?' do
  let(:this) { Trie.new }
  it 'returns a boolean' do
    expect(this.visited?('www.google.com')).to eq false
  end
  it 'returns a boolean' do
    this.visited?('www.google.com')
    expect(this.visited?('www.google.com')).to eq true
  end
  it 'returns a boolean' do
    this.visited?('www.gordon.com')
    expect(this.visited?('www.google.com')).to eq false
  end
  it 'returns a boolean' do
    this.visited?('www.textio.com')
    expect(this.visited?('www.google.com')).to eq false
  end
end
