require 'rspec'
require_relative '../../pramp_challenges/get_different_num'

describe '#get_different_num' do

  it 'returns lowest num not included in the array' do
    expect(get_different_num([0])).to eq 1
  end

  it 'returns lowest num not included in the array' do
    expect(get_different_num([0,1,2])).to eq 3
  end

  it 'returns lowest num not included in the array' do
    expect(get_different_num([1,3,0,2])).to eq 4
  end

  it 'returns lowest num not included in the array' do
    expect(get_different_num([10000])).to eq 0
  end

  it 'returns lowest num not included in the array' do
    expect(get_different_num([1,0,3,4,5])).to eq 2
  end

  it 'returns lowest num not included in the array' do
    expect(get_different_num([0,10000])).to eq 1
  end

  it 'returns lowest num not included in the array' do
    expect(get_different_num([0,999,10000])).to eq 1
  end
end
