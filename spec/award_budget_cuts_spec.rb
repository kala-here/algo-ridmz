require 'rspec'
require_relative '../award_budget_cuts'

describe '#find_grants_cap' do
  let(:alt0) { [2, 30, 50, 8, 100] }
  let(:alt1) { [2, 30, 50, 20, 200] }
  let(:alt2) { [2, 30, 50, 120, 1000] }
  let(:alt3) { [2, 300, 400, 20, 100] }
  let(:alt4) { [2, 100, 50, 120, 1000] }
  let(:alt5) { [600, 100, 300, 400, 1000] }
  let(:budget) { 190 }

  it 'returns the max budget cap with 0 alterations' do
    expect(find_grants_cap(alt0, budget)).to eq 100
  end

  it 'returns the max budget cap with 1 alterations' do
    expect(find_grants_cap(alt1, budget)).to eq 88
  end

  it 'returns the max budget cap with 2 alterations' do
    expect(find_grants_cap(alt2, budget)).to eq 54
  end

  it 'returns the max budget cap with 3 alterations' do
      expect(find_grants_cap(alt3, budget)).to eq 56
  end

  it 'returns the max budget cap with 4 alternations' do
    expect(find_grants_cap(alt4, budget)).to eq 47
  end

  it 'returns the max budget cap with 5 alternations' do
    expect(find_grants_cap(alt5, budget)).to eq 47
  end

end
