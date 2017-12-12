require 'rspec'
require_relative '../basic_regex_parser'

describe '#is_match' do
  let(:text_pattern) { ["", ""] }
  let(:text_pattern1) { ["aa", "a"] }
  let(:text_pattern2) { ["bb", "bb"] }
  let(:text_pattern3) { ["", "a*"] }
  let(:text_pattern4) { ["abbdbb", "ab*d"] }
  let(:text_pattern5) { ["aba", "a.a"] }
  let(:text_pattern6) { ["acd", "ab*c."] }
  let(:text_pattern7) { ["abaa", "a.*a*"] }

  it 'returns true if text and pattern match' do
    expect(is_match(text_pattern)).to eq true
  end

  it 'returns false if text and pattern do not match' do
    expect(is_match(text_pattern1)).to eq false
  end

  it 'returns true if text and pattern match' do
    expect(is_match(text_pattern2)).to eq true
  end

  it 'returns true if text and pattern match' do
    expect(is_match(text_pattern3)).to eq true
  end
  it 'returns false if text and pattern do not match' do
    expect(is_match(text_pattern4)).to eq false
  end
  it 'returns true if text and pattern match' do
    expect(is_match(text_pattern5)).to eq true
  end
  it 'returns true if text and pattern match' do
    expect(is_match(text_pattern6)).to eq true
  end
  it 'returns true if text and pattern match' do
    expect(is_match(text_pattern7)).to eq true
  end

end
