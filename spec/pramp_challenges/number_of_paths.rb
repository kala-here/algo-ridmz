require 'rspec'
require_relative '../../pramp_challenges/number_of_paths'

describe '#num_of_paths_to_dest' do
  let(:num) { 1 }
  let(:num) { 2 }
  let(:num) { 3 }
  let(:num) { 4 }
  let(:num) { 6 }
  let(:num) { 17 }

  it 'returns the number of paths to reach (0,0)' do
    expect(num_of_paths_to_dest(1)).to eq 1
  end

  it 'returns the number of paths to reach (1,1)' do
    expect(num_of_paths_to_dest(2)).to eq 1
  end

  it 'returns the number of paths to reach (2,2)' do
    expect(num_of_paths_to_dest(3)).to eq 2
  end

  it 'returns the number of paths to reach (3,3)' do
    expect(num_of_paths_to_dest(4)).to eq 5
  end

  it 'returns the number of paths to reach (5,5)' do
    expect(num_of_paths_to_dest(6)).to eq 42
  end

  it 'returns the number of paths to reach (16,16)' do
    expect(num_of_paths_to_dest(17)).to eq 35357670
  end

end
