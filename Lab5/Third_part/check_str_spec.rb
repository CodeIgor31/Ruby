# frozen_string_literal: true

require_relative 'check_str'

require 'securerandom'

require 'faker'

RSpec.describe CheckString do
  describe '#self.check_string' do
    context 'When parameter is empty' do
      it 'return Empty' do
        expect(described_class.check_string([])).to eql('Empty string array')
      end
    end
    context 'When parameter is good' do
      it 'array need correction, return corrected string array' do
        string1 = rand(0...9).to_s + SecureRandom.alphanumeric
        string2 = Faker::Lorem.word
        string3 = "#{SecureRandom.base64}./"
        s_array = Array[string1, string2, string3]
        res1 = string1
        res1[0] = '_'
        expect(described_class.check_string(s_array)).to eql(Array[res1, string2])
      end
      it 'array dont need correction, return start string array' do
        str1 = Faker::Lorem.word
        str2 = Faker::Lorem.word
        str3 = Faker::Lorem.word
        s_array2 = Array[str1, str2, str3]
        expect(described_class.check_string(s_array2)).to eql(Array[str1, str2, str3])
      end
    end
  end
end
