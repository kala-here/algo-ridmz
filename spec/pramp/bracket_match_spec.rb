require 'rspec'
require_relative '../../pramp/bracket_match'

describe '#bracket_match' do
  let(:str) { ")" }
  let(:str1) { "(" }
  let(:str2) { "(())" }
  let(:str3) { "(()" }
  let(:str4) { "())(" }
  let(:str5) { "))))" }
  let(:str6) { ")(" }
  let(:str7) { "()()()()()" }


  it 'returns the number of brackets needed to make complete the set' do
    expect(bracket_match(str)).to eq 1
  end

  it 'returns the number of brackets needed to make complete the set' do
    expect(bracket_match(str1)).to eq 1
  end

  it 'returns the number of brackets needed to make complete the set' do
    expect(bracket_match(str2)).to eq 0
  end

  it 'returns the number of brackets needed to make complete the set' do
    expect(bracket_match(str3)).to eq 1
  end

  it 'returns the number of brackets needed to make complete the set' do
    expect(bracket_match(str4)).to eq 2
  end

  it 'returns the number of brackets needed to make complete the set' do
    expect(bracket_match(str5)).to eq 4
  end

  it 'returns the number of brackets needed to make complete the set' do
    expect(bracket_match(str6)).to eq 2
  end

  it 'returns the number of brackets needed to make complete the set' do
    expect(bracket_match(str7)).to eq 0
  end

end
