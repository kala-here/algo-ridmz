require 'rspec'
require_relative '../../frontend_masters_challenges/reverse_a_string'

describe '#reverse_a_string' do

  it 'reverses a string' do
    expect(reverse('abcdefg')).to eq 'gfedcba'
  end

  it 'reverses a string' do
    expect(reverse('yxz d')).to eq 'd zxy'
  end

end
