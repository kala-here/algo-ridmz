require 'rspec'
require_relative '../recursive_greatest_common_divisor'

describe '#recursive_gcd' do

  it 'return the highest whole number that each num can be divided by' do
    expect(recursive_gcd(1, 2)).to eq 1
  end

  it 'return the highest whole number that each num can be divided by' do
    expect(recursive_gcd(8, 12)).to eq 4
  end

  it 'return the highest whole number that each num can be divided by' do
    expect(recursive_gcd(12, 60)).to eq 12
  end

  it 'return the highest whole number that each num can be divided by' do
    expect(recursive_gcd(12, 90)).to eq 6
  end

end
