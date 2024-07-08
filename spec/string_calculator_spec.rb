# spec/string_calculator_spec.rb
require 'rspec'

require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number itself if only one number is provided' do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it 'returns the sum of two comma-separated numbers' do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

  end
end
