# frozen_string_literal: true

require_relative 'class'

puts 'Enter X1'
fir_p_x = gets.chomp.to_i
puts 'Enter Y1'
fir_p_y = gets.chomp.to_i
puts 'Enter X2'
sec_p_x = gets.chomp.to_i
puts 'Enter Y2'
sec_p_y = gets.chomp.to_i

line = Line.new(fir_p_x, fir_p_y, sec_p_x, sec_p_y)

line.print

puts 'Enter X3'
thi_p_x = gets.chomp.to_i
puts 'Enter Y3'
thi_p_y = gets.chomp.to_i

p "Does this line have this third point: #{line.three_point?(thi_p_x, thi_p_y)}"

puts 'Enter Fat'
fat = gets.chomp.to_f

f_line = FatLine.new(fir_p_x, fir_p_y, sec_p_x, sec_p_y, fat)

f_line.print

p "Does this line have this third point: #{f_line.three_point?(thi_p_x, thi_p_y)}"
