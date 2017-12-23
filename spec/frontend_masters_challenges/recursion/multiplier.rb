require 'rspec'
require_relative '../../../frontend_masters_challenges/recursion/multiplier'

describe '#recursive_multiplier' do

  it 'returns an array of array items multiplied by num' do
    expect(recursive_multiplier([1, 2, 3], 3)).to eq [3, 6, 9]
  end

  it 'returns an array of array items multiplied by num' do
    expect(recursive_multiplier([4, 1, 2], 2)).to eq [8, 2, 4]
  end

end
