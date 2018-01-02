require 'rspec'
require_relative '../../interview_cake_challenges/highest_product_of_3'

describe '#highest_product_of_3' do

  it 'returns the highest product of 3 ints' do
    expect(highest_product_of_3([1, 7, 3, 4])).to eq 84
  end

  it 'returns the highest product of 3 ints' do
    expect(highest_product_of_3([6, 4, 5, 3])).to eq 120
  end

  it 'returns the highest product of 3 ints' do
    expect(highest_product_of_3([3, 2, 0])).to eq 0
  end

  it 'returns the highest product of 3 ints' do
    expect(highest_product_of_3([20, 60])).to eq "There must be at least 3 items in the array to make a product out of."
  end

  it 'returns the highest product of 3 ints' do
    expect(highest_product_of_3([20, 60, 90])).to eq 108000
  end

  it 'returns the highest product of 3 ints' do
    expect(highest_product_of_3([-20, 60, 90])).to eq -108000
  end

  it 'returns the highest product of 3 ints' do
    arr = [-10, -10, 1, 3, 2]
    expect(highest_product_of_3(arr)).to eq 300
  end

  it 'returns the highest product of 3 ints' do
    arr = [−10, −9, -8, -7]
    expect(highest_product_of_3(arr)).to eq -504
  end

end
