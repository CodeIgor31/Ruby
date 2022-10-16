# frozen_string_literal: true

require_relative '/home/djavu/RubyLabs/Lab5/First_part/math_foo'

# Main
module Main
  include FirstPart

  puts('Дано уравнение y=(cos(x+3.1*z))/tg(x/r)')
  puts('Введите значение х')
  x = gets.chomp.to_f
  puts('Введите значение z')
  z = gets.chomp.to_f
  puts('Введите значение r')
  r = gets.chomp.to_f
  puts FirstPart.math_foo(x, z, r)
end
