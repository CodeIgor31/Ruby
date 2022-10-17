# frozen_string_literal: true

require_relative 'belong_2'

require 'faker'

RSpec.describe Belong2 do
  func1 = ->(x_v) { Math.cos(x_v) }
  func2 = ->(x_v) { Math.sin(x_v**2) }
  describe '#self.belongs?' do
    context 'Entering not numbers' do
      it 'Both parameters are wrong' do
        x, y = Faker::Lorem.word
        expect(described_class.belongs?(func1, x, y)).to eql('Enter only numbers')
      end
      it 'x/y parameter is wrong' do
        x = Faker::Lorem.word
        y = (-100..100).to_s
        expect(described_class.belongs?(func1, x, y)).to eql('Enter only numbers')
        x, y = y, x
        expect(described_class.belongs?(func1, x, y)).to eql('Enter only numbers')
      end
    end
    context 'Everything is ok' do
      it 'Good parameters' do
        x = 0.to_s
        y = 1.to_s
        expect(described_class.belongs?(func1, x, y)).to eql('Yes')
        expect(described_class.belongs?(func2, x, y)).to eql('No')
      end
    end
  end
end
