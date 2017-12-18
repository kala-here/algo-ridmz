require 'rspec'
require_relative '../recursive_flatten_the_array'

describe '#recursive_flatten_the_array' do

  it 'turns a 2d array into a regular array' do
    expect(recursive_flatten_the_array([1,[2],[3, [[4]]]], [])).to eq [1, 2, 3, 4]
  end

end
