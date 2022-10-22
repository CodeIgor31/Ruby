# frozen_string_literal: true

require_relative 'class'

RSpec.describe Line do
  context 'Checking children of Line' do
    it 'returns FatLine' do
      expect(Line.subclasses[0]).to eql(FatLine)
    end
  end
end

RSpec.describe FatLine do
  context 'Checking parents of FatLine' do
    it 'returns Line' do
      expect(FatLine.superclass).to eql(Line)
    end
  end
end

RSpec.describe Line do
  describe '#three_point?' do
    context 'check with the attitude' do
      it 'returns Yes' do
        x_f = y_f = 1
        x_s = y_s = 5
        obj = Line.new(x_f, y_f, x_s, y_s)
        x_t = y_t = 3
        expect(obj.three_point?(x_t, y_t)).to eql('Yes')
      end
      it 'returns No' do
        x_f = y_f = 1
        x_s = y_s = 5
        obj = Line.new(x_f, y_f, x_s, y_s)
        x_t = 3
        y_t = 2
        expect(obj.three_point?(x_t, y_t)).to eql('No')
      end
    end
  end
end
