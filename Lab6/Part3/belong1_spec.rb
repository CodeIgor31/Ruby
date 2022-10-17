# frozen_string_literal: true

require_relative 'belong_1'

require 'faker'

RSpec.describe Belong1 do
  describe '#self.belongs?' do
    context 'Entering not numbers' do
      it 'Both parameters are wrong' do
        x = Faker::Lorem.word
        y = Faker::Lorem.word
        expect(described_class.belongs?(x, y)).to eql('Enter only numbers')
      end
      it 'x/y parameter is wrong' do
        x = Faker::Lorem.word
        y = (-100..100).to_s
        expect(described_class.belongs?(x, y)).to eql('Enter only numbers')
        x, y = y, x
        expect(described_class.belongs?(x, y)).to eql('Enter only numbers')
      end
    end
    context 'Everything is ok' do
      it 'Good parameters' do
        x = 0.to_s
        y = 1.to_s
        expect(described_class.belongs?(x, y) { |x_v| Math.cos(x_v) }).to eql('Yes')
        expect(described_class.belongs?(x, y) { |x_v| Math.sin(x_v**2) }).to eql('No')
      end
    end
  end
end
