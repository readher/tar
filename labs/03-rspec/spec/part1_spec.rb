# keyboard shortcuts: https://atom.io/packages/rspec
#
#   Ctrl+Alt+T - executes all specs the current file
#   Ctrl+Alt+X - executes only the spec on the line the cursor's at
#   Ctrl+Alt+E - re-executes the last executed spec

require 'simplecov'
SimpleCov.start

require 'part1'

RSpec.describe 'part1.rb' do
  describe '#sum' do
    it 'should be defined' do
      expect { sum([1, 3, 4]) }.not_to raise_error
    end

    it 'returns the correct sum' do
      expect(sum([1, 2, 3, 4, 5])).to be_a_kind_of Integer
      expect(sum([1, 2, 3, 4, 5])).to eq(15)
      expect(sum([1, 2, 3, 4, -5])).to eq(5)
    end
  end

  describe '#max_2_sum' do
    it 'should be defined' do
      expect { max_2_sum([1, 2, 3]) }.not_to raise_error
    end

    it 'returns the correct sum' do
      expect(max_2_sum([1, 2, 3, 4, 5])).to be_a_kind_of(Integer)
      expect(max_2_sum([1, 2, 3, 4, 100])).to eq(104)
      expect(max_2_sum([1, -2, -3, -4, -5])).to eq(-1)
    end
  end

  describe '#sum_to_n?' do
    it 'should be defined' do
      expect { sum_to_n?([1, 2, 3], 4) }.not_to raise_error
    end

    it 'returns the correct value' do
      expect(sum_to_n?([1, 2, 3, 4, 5], 5)).to be true
      expect(sum_to_n?([1, 2, 5, 6, 7, 8], 3)).to be true
      expect(sum_to_n?([100, 50, 50, 2, 100, 4, 5], 100)).to be true
      expect(sum_to_n?([1, 2, 3, 4, 5], -3)).to be false
    end
  end
end
