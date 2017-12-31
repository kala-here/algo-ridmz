require 'rspec'
require_relative '../../interview_cake_challenges/highest_product_of_3'

describe '#highest_product_of_3' do

  it 'returns the product of the 3 highest integers' do
    expect(highest_product_of_3([1, 7, 3, 4])).to eq [84]
  end

  it 'returns the product of the 3 highest integers' do
    expect(highest_product_of_3([6, 4, 5, 3])).to eq [120]
  end

  it 'returns the product of the 3 highest integers' do
    expect(highest_product_of_3([3, 2, 0])).to eq [0]
  end

  it 'returns the product of the 3 highest integers' do
    expect(highest_product_of_3([20, 60])).to eq "There must be at least 3 items in the array to make a product out of."
  end

  it 'returns the product of the 3 highest integers' do
    expect(highest_product_of_3([20, 60, 90])).to eq [10800]
  end
end
