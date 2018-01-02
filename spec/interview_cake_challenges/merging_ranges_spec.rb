require 'rspec'
require_relative '../../interview_cake_challenges/merging_ranges'

describe '#merge_ranges' do

  it 'returns the condensed ranges from the timeslots array' do
    expect(merge_ranges([[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]])).to eq [[0, 1], [3, 8], [9, 12]]
  end

end
