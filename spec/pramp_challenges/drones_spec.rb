require 'rspec'
require_relative '../../pramp_challenges/drones'

describe '#calc_drone_min_energy' do

  it 'returns amt of fuel needed at start of route' do
    expect(calc_drone_min_energy([[0,1,19]])).to eq 0
  end

  it 'returns amt of fuel needed at start of route' do
    expect(calc_drone_min_energy([[0,2,10],[10,10,8]])).to eq 0
  end

  it 'returns amt of fuel needed at start of route' do
    expect(calc_drone_min_energy([[0,2,6],[10,10,20]])).to eq 14
  end

  it 'returns amt of fuel needed at start of route' do
    expect(calc_drone_min_energy([[0,2,10],[3,5,0],[9,20,6],[10,12,15],[10,10,8]])).to eq 5
  end

  it 'returns amt of fuel needed at start of route' do
    expect(calc_drone_min_energy([[0,2,2],[3,5,38],[9,20,6],[10,12,15],[10,10,8]])).to eq 36
  end

  it 'returns amt of fuel needed at start of route' do
    expect(calc_drone_min_energy([[0,2,10],[3,5,9],[9,20,6],[10,12,2],[10,10,10],[10,10,2]])).to eq 0
  end

end
