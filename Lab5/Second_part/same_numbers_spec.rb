# frozen_string_literal: true

require_relative 'same_numbers'

RSpec.describe SameNum do
  describe '#self.same_nums' do
    context 'When parameter has length 0' do
      it 'return 0' do
        expect(described_class.same_nums([])).to eql(0)
      end
    end
    context 'When parametr has length > 0' do
      it 'return maximum counter of idential elemenets in a row in the middle' do
        test_array = Array[1, 1, 2, 2, 2, 3, 3, 1, 1, 1, 1, 5, 1]

        expect(described_class.same_nums(test_array)).to eql(4)
      end
      it 'return maximum counter of idential elemenets in a row at the start' do
        test_array = Array[2, 2, 2, 2, 2, 3, 3, 1, 1, 1, 1, 5, 1]

        expect(described_class.same_nums(test_array)).to eql(5)
      end
      it 'return maximum counter of idential elemenets in a row at the end' do
        test_array = Array[2, 2, 2, 1, 1, 3, 3, 1, 1, 1, 1, 5, 1, -2, -2, -2, -2, -2]

        expect(described_class.same_nums(test_array)).to eql(5)
      end
    end
  end
end
