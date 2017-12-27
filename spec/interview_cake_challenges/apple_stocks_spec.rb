require 'rspec'
require_relative '../../interview_cake_challenges/apple_stocks'

describe '#get_max_profit' do
  it 'returns the max profit' do
    stock_prices_yesterday = [10, 7, 5, 8, 11, 9]
    expect(get_max_profit(stock_prices_yesterday)).to eq
  end
end
