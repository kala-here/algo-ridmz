require 'rspec'
require_relative '../basic_regex_parser'

describe '#is_match' do

  describe 'when both text and pattern are empty' do
    let(:text) { "" }
    let(:pattern) { "" }
    it 'returns true because they match' do
      expect(is_match(text, pattern)).to eq true
    end
  end

  describe 'when both text and pattern do not match without symbols' do
    let(:text) { "aa" }
    let(:pattern) { "a" }
    it 'returns false because they do not match' do
      expect(is_match(text, pattern)).to eq false
    end
  end

  describe 'when both text and pattern do match without symbols' do
    let(:text) { "bb" }
    let(:pattern) { "bb" }
    it 'returns true because they do match' do
      expect(is_match(text, pattern)).to eq true
    end
  end

  describe "when both text and pattern do match with '*' included and text is empty" do
    let(:text) { "" }
    let(:pattern) { "a*" }
    it 'returns true because they do match' do
      expect(is_match(text, pattern)).to eq true
    end
  end

  describe "when both text and pattern don't match with '*' included" do
    let(:text) { "abbdbb" }
    let(:pattern) { "ab*d" }
    it 'returns false because text exceeds pattern' do
      expect(is_match(text, pattern)).to eq false
    end
  end

  describe "when both text and pattern do match with '.' included" do
    let(:text) { "aba" }
    let(:pattern) { "a.a" }
    it 'returns true because they do match with a dot' do
      expect(is_match(text, pattern)).to eq true
    end
  end

  describe "when both text and pattern do match with '.' & '*' included" do
    let(:text) { "acd" }
    let(:pattern) { "ab*c." }
    it 'returns true because they do match with a dot' do
      expect(is_match(text, pattern)).to eq true
    end
  end

  describe "when both text and pattern do match with '.' included" do
    let(:text) { "abaa" }
    let(:pattern) { "a.*a*" }
    it 'returns true because they do match with a dot' do
      expect(is_match(text, pattern)).to eq true
    end
  end

end
