# frozen_string_literal: true

require_relative 'sum_row'

# mod Main
module Main
  include SumRow
  puts "Choose accuracy: \n 1: 10^-3 \n 2: 10^-4"
  puts 'Enter number'
  choice = gets.chomp.to_i
  case choice
  when 1
    accur = 0.001
  when 2
    accur = 0.0001
  else
    puts 'Choose value 1 or 2'
  end
  puts "Sum and count of integration: #{SumRow.sum_row(accur)}"
end
