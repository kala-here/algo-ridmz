require 'rspec'
require_relative '../recursive_fibonacci'

describe '#recursive_fibonacci' do

  it 'returns 0+1+2+3+4+5+6+7+8+9' do
    expect(recursive_fibonacci(9)).to eq 34
  end

  it 'returns 8+13' do
    expect(recursive_fibonacci(8)).to eq 21
  end

  it 'returns 5+8' do
    expect(recursive_fibonacci(7)).to eq 13
  end

  it 'returns 3+5' do
    expect(recursive_fibonacci(6)).to eq 8
  end

  it 'returns 2+3' do
    expect(recursive_fibonacci(5)).to eq 5
  end

  it 'returns 1+2' do
    expect(recursive_fibonacci(4)).to eq 3
  end

  it 'returns 1+1' do
    expect(recursive_fibonacci(3)).to eq 2
  end

  it 'returns 0+1' do
    expect(recursive_fibonacci(2)).to eq 1
  end
# 0 & 1 are how the Fibonnaci sequence start
  it 'returns 1' do
    expect(recursive_fibonacci(1)).to eq 1
  end

  it 'returns 0' do
    expect(recursive_fibonacci(0)).to eq 0
  end

end
