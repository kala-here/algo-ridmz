require 'rspec'
require_relative '../../interview_cake_challenges/find_product'

describe '#get_products_of_all_ints_except_at_index' do

  it 'return the products of all ints except at index' do
    expect(get_products_of_all_ints_except_at_index([1, 7, 3, 4])).to eq [84, 12, 28, 21]
  end

  it 'return the products of all ints except at index' do
    expect(get_products_of_all_ints_except_at_index([6, 4, 5, 3])).to eq [60, 90, 72]
  end

  it 'return the products of all ints except at index' do
    expect(get_products_of_all_ints_except_at_index([3, 2, 0])).to eq [0, 0, 6]
  end

  it 'return the products of all ints except at index' do
    expect(get_products_of_all_ints_except_at_index([20, 60])).to eq nil
  end

  it 'return the products of all ints except at index' do
    expect(get_products_of_all_ints_except_at_index([20, 60, 90])).to eq [5400, 1800, 1200]
  end
end
