require 'rspec'
require_relative '../recursive_factorial'

describe '#recursive_factorial' do

  it 'returns 5*4*3*2*1' do
    expect(recursive_factorial(5)).to eq 120
  end

  it 'returns 4*3*2*1' do
    expect(recursive_factorial(4)).to eq 24
  end

  it 'returns 3*2*1' do
    expect(recursive_factorial(3)).to eq 6
  end

  it 'returns 2*1' do
    expect(recursive_factorial(2)).to eq 2
  end

  it 'returns 1*1' do
    expect(recursive_factorial(1)).to eq 1
  end

  it 'returns nil if input is 0' do
    expect(recursive_factorial(0)).to eq nil
  end

end
