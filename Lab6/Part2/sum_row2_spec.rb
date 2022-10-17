# frozen_string_literal: true

require_relative 'sum_row2'

RSpec.describe SumRow2 do
  describe '#self.sum_row2' do
    context 'When everything is good' do
      it 'returns correct result with accuracy 10^-3' do
        accuracy = 10**-3
        expect(described_class.sum_row2(accuracy)[1]).to eql(32)
      end
      it 'returns correct result with accuracy 10^-4' do
        accuracy = 10**-4
        expect(described_class.sum_row2(accuracy)[1]).to eql(100)
      end
    end
    context 'When accuracy is wrong' do
      it 'returns Error' do
        accuracy = rand(3..100)
        expect(described_class.sum_row2(accuracy)).to eql('Error')
      end
    end
  end
end
