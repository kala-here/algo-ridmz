require 'rspec'
require_relative '../../pramp_challenges/merge_2_packages'

describe '#get_indices_of_item_weights' do

  it 'returns the indices of the two ints that add up to the limit' do
    expect(get_indices_of_item_weights([10, 6, 10, 15, 16], 21)).to eq [1, 3]
  end

  it 'returns the indices of the two ints that add up to the limit' do
    expect(get_indices_of_item_weights([10, 6, 10, 15, 16], 20)).to eq [0, 2]
  end

  it 'returns an empty array if no pair is found' do
    expect(get_indices_of_item_weights([4, 6], 21)).to eq []
  end

  it 'returns an error message if there is less than 2 items in the arr' do
    expect(get_indices_of_item_weights([4], 21)).to eq 'There are not enough items to sum up'
  end

end
