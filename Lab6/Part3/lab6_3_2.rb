# frozen_string_literal: true

require_relative 'belong_2'

# mod Main
module Main
  include Belong2
  puts 'Enter value of x'
  x_val = gets.chomp.to_f
  puts 'Enter value of y'
  y_val = gets.chomp.to_f
  foo_cos = ->(x) { Math.cos(x) }
  foo_sin = ->(x) { Math.sin(x**2) }
  puts 'Graph cos(x) check:'
  flag1 = Belong2.belongs?(foo_cos, x_val, y_val)
  if flag1
    puts 'This point belongs to this graph'
  else
    puts 'This point doesnt belongs to this graph'
  end
  puts 'Graph sin(x^2) check:'
  flag2 = Belong2.belongs?(foo_sin, x_val, y_val)
  if flag2
    puts 'This point belongs to this graph'
  else
    puts 'This point doesnt belongs to this graph'
  end
end
