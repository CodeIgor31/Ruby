# frozen_string_literal: true

require_relative 'belong_1'

# mod Main
module Main
  include Belong1
  puts 'Enter value of x'
  x_val = gets.chomp
  puts 'Enter value of y'
  y_val = gets.chomp
  puts 'Graph cos(x) check:'
  flag1 = Belong1.belongs?(x_val, y_val) { |x| Math.cos(x) }
  case flag1
  when 'Yes'
    puts 'This point belongs to this graph'
  when 'No'
    puts 'This point doesnt belongs to this graph'
  else
    puts flag1
  end
  puts 'Graph sin(x^2) check:'
  flag2 = Belong1.belongs?(x_val, y_val) { |x| Math.sin(x**2) }
  case flag2
  when 'Yes'
    puts 'This point belongs to this graph'
  when 'No'
    puts 'This point doesnt belongs to this graph'
  else
    puts flag2
  end
end
