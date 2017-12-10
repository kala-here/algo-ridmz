require 'rspec'
require_relative '../award_budget_cuts'

describe '#find_grants_cap' do
  let(:arr) { [2, 100, 50, 120, 1000] }
  let(:budget) { 190 }

  it 'returns the max budget cap' do
    expect(find_grants_cap(arr, budget)).to eq 47
  end
end
