require 'rspec'
require_relative '../award_budget_cuts'

describe '#find_grants_cap' do
  let(:arr) { [2, 100, 50, 120, 1000] }
  let(:arr1) { [2, 30, 50, 120, 1000] }
  let(:arr2) { [2, 30, 50, 8, 100] }
  let(:budget) { 190 }

  # it 'returns the max budget cap with 4 alternations' do
  #   expect(find_grants_cap(arr, budget)).to eq 47
  # end

  it 'returns the max budget cap with unknown amt of alterations' do
    expect(find_grants_cap(arr1, budget)).to eq 52
  end
  #
  # it 'returns the max budget cap with 0 alterations' do
  #   expect(find_grants_cap(arr2, budget)).to eq 100
  # end
end
