# frozen_string_literal: true

require_relative 'belong_1'

# mod Main
module Main
  include Belong1
  puts 'Enter value of x'
  x_val = gets.chomp.to_f
  puts 'Enter value of y'
  y_val = gets.chomp.to_f
  puts 'Graph cos(x) check:'
  flag1 = Belong1.belongs?(x_val, y_val) { |x| Math.cos(x) }
  if flag1
    puts 'This point belongs to this graph'
  else
    puts 'This point doesnt belongs to this graph'
  end
  puts 'Graph sin(x^2) check:'
  flag2 = Belong1.belongs?(x_val, y_val) { |x| Math.sin(x**2) }
  if flag2
    puts 'This point belongs to this graph'
  else
    puts 'This point doesnt belongs to this graph'
  end
end
