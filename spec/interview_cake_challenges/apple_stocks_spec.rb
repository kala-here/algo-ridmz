require 'rspec'
require_relative '../../interview_cake_challenges/apple_stocks'

describe '#get_max_profit' do

  it 'returns the max profit' do
    stock_prices_yesterday = [10, 7, 5, 8, 11, 9]
    expect(get_max_profit(stock_prices_yesterday)).to eq 6
  end

  it 'returns the max profit' do
    stock_prices_yesterday = [4,9,3,10,12,20,0,3]
    expect(get_max_profit(stock_prices_yesterday)).to eq 17
  end

  it 'returns the max profit' do
    stock_prices_yesterday = [12,20,0,3]
    expect(get_max_profit(stock_prices_yesterday)).to eq 17
  end
end
