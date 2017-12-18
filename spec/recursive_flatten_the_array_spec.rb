require 'rspec'
require_relative '../recursive_flatten_the_array'

describe '#recursive_flatten_the_array' do

  it 'turns a 2d array into a regular array' do
    expect(recursive_flatten_the_array([1,[2],[3, [[4]]]], [])).to eq [1, 2, 3, 4]
  end

  it 'turns a 2d array into a regular array' do
    expect(recursive_flatten_the_array([[3], 6, [9], [12]], [])).to eq [3, 6, 9, 12]
  end

  it 'turns a 2d array into a regular array' do
    expect(recursive_flatten_the_array([[1, 2, [3, 4]]], [])).to eq [1, 2, 3, 4]
  end

  it 'turns a 2d array into a regular array' do
    expect(recursive_flatten_the_array([3, [6, [9, [12]]]], [])).to eq [3, 6, 9, 12]
  end

  it 'turns a 2d array into a regular array' do
    expect(recursive_flatten_the_array([[1], [2], [3], [4]], [])).to eq [1, 2, 3, 4]
  end

end
