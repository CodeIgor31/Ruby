# frozen_string_literal: true

require '/home/djavu/RubyLabs/Lab5/Second_part/same_numbers'

# Main
module Main
  include SameNum

  list = Array[]
  puts('Введите количество элементов массива')
  n = gets.chomp.to_i
  i = 0
  puts('Вводите элементы')
  while i < n
    list[i] = gets.chomp.to_i
    i += 1
  end
  result = SameNum.same_nums(list)
  puts "Наибольшее число одинаковых подряд цифр =  #{result}"
end
