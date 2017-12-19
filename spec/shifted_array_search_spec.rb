require 'rspec'
require_relative '../shifted_array_search'


describe '#shifted_array_search' do

  it 'returns the index of 3' do
    x = [2]
    expect(shifted_array_search(x, 3)).to eq -1
  end

  it 'returns the index of 2' do
    x = [2]
    expect(shifted_array_search(x, 2)).to eq 0
  end

  it 'returns the index of 2' do
    x = [1, 2]
    expect(shifted_array_search(x, 2)).to eq 1
  end

  it 'returns the index of 5' do
    x = [3, 4, 5, 6, 1, 2]
    expect(shifted_array_search(x, 5)).to eq 2
  end

  it 'returns the index of 5' do
    x = [10, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    expect(shifted_array_search(x, 2)).to eq 2
  end

  it 'returns the index of 2' do
    x = [4, 5, 6, 1, 2]
    expect(shifted_array_search(x, 2)).to eq 4
  end

  it 'returns the index of 1' do
    x = [1, 2, 3, 4]
    expect(shifted_array_search(x, 1)).to eq 0
  end

  it 'returns the index of 4' do
    expect(shifted_array_search([4, 6, 1, 2, 3], 4)).to eq 0
  end

  it 'returns the index of 3' do
    x = [7, 1, 2, 3, 4, 5, 6]
    expect(shifted_array_search(x, 3)).to eq 3
  end

  it 'returns the index of 10' do
    x = [12, 13, 14, 10, 11]
    expect(shifted_array_search(x, 10)).to eq 3
  end

end

describe '#find_pivot' do

  it 'returns index 0 of the would-be unshifted array' do
    x = [3, 4, 5, 6, 1, 2]
    expect(find_pivot(x)).to eq 4
  end

  it 'returns index 0 of the would-be unshifted array' do
    x = [4, 5, 6, 1, 2]
    expect(find_pivot(x)).to eq 3
  end

  it 'returns index 0 of the would-be unshifted array' do
    x = [1, 2, 3, 4]
    expect(find_pivot(x)).to eq 0
  end

  it 'returns index 0 of the would-be unshifted array' do
    x = [4, 6, 1, 2, 3]
    expect(find_pivot(x)).to eq 2
  end

  it 'returns index 0 of the would-be unshifted array' do
    x = [7, 1, 2, 3, 4, 5, 6]
    expect(find_pivot(x)).to eq 1
  end

  it 'returns index 0 of the would-be unshifted array' do
    x = [12, 13, 14, 10, 11]
    expect(find_pivot(x)).to eq 3
  end

end

describe '#binary_search' do

  it 'returns index of num' do
    x = [3, 4, 5, 6, 1, 2]
    s = 0
    f = 3
    n = 6
    expect(binary_search(x, s, f, n)).to eq 3
  end

  it 'returns index of num' do
    x = [12, 13, 14, 10, 11]
    s = 0
    f = 2
    n = 13
    expect(binary_search(x, s, f, n)).to eq 1
  end

  it 'returns index of num' do
    x = [7, 1, 2, 3, 4, 5, 6]
    s = 1
    f = 6
    n = 6
    expect(binary_search(x, s, f, n)).to eq 6
  end

  it 'returns index of num' do
    x = [10, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    s = 1
    f = 9
    n = 2
    expect(binary_search(x, s, f, n)).to eq 2
  end

end
