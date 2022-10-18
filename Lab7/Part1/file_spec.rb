# frozen_string_literal: true

require_relative 'file'

require 'securerandom'

RSpec.describe FileEdditor do
  describe '#file_g_edditor' do
    context 'Everything is ok' do
      it 'string from SecureRandom' do
        FileEdditor.file_f_edditor
        FileEdditor.file_g_edditor
        expect(described_class.return_f_file.downcase).to eql(FileEdditor.return_g_file)
      end
    end
  end
end
