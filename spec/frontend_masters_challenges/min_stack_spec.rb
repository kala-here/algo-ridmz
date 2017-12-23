require 'rspec'
require_relative '../../frontend_masters_challenges/min_stack'

describe '#min_stack' do

  it 'returns min value in stack' do
    expect(min_stack([5, 4, 3, 6])).to eq 3
  end

  it 'returns min value in stack' do
    expect(min_stack([5, 4, 3, 6, 9])).to eq 3
  end

  it 'returns min value in stack' do
    expect(min_stack([5, 4, 3, 6, 1])).to eq 1
  end

  it 'returns min value in stack' do
    expect(min_stack([5, 2, 3, 6, 9])).to eq 2
  end

  it 'returns min value in stack' do
    expect(min_stack([5, 4, 4, 6, 4])).to eq 4
  end

end
