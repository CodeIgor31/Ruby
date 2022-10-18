# frozen_string_literal: true

require 'securerandom'

# FileEdditor
module FileEdditor
  def self.file_f_edditor
    File.open('F.txt', 'w') do |f|
      f.puts SecureRandom.base64(100)
    end
  end

  def self.file_g_edditor
    File.open('G.txt', 'w') do |g|
      File.open('F.txt', 'r') do |f|
        line = f.gets.downcase
        g.puts line
      end
    end
  end

  def self.return_f_file
    File.open('F.txt', 'r', &:gets)
  end

  def self.return_g_file
    File.open('G.txt', 'r', &:gets)
  end
end
