require 'rspec'
require_relative '../../interview_cake_challenges/find_product'

describe '#get_products_of_all_ints_except_at_index' do
  it 'return the products of all ints except at index' do
    expect(get_products_of_all_ints_except_at_index([1, 7, 3, 4])).to eq [84, 12, 28, 21]
  end
end
