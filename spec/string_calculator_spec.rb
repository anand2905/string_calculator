require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number for a single input' do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it 'returns sum for two comma-separated numbers' do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

    it 'supports newline as a separator' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end
  end
end