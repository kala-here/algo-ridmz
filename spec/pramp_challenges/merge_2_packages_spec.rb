require 'rspec'
require_relative '../../pramp_challenges/merge_2_packages'

describe '#get_indices_of_item_weights' do

  it 'returns the indices of the two ints that add up to the limit' do
    expect(get_indices_of_item_weights([4, 6, 10, 15, 16], 21)).to eq [3, 1]
  end

end
