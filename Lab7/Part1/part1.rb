# frozen_string_literal: true

require_relative 'file'

# Main
module Main
  include FileEdditor
  FileEdditor.file_f_edditor
  FileEdditor.file_g_edditor
  puts 'File F'
  p FileEdditor.return_f_file
  puts 'File G'
  p FileEdditor.return_g_file
end
