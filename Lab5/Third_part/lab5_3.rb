# frozen_string_literal: true

require_relative 'check_str'

# Main
module Main
  include CheckString

  string_list = Array[]
  i = 0
  puts('Введите строку, для завершения введите end: ')
  str = gets.chomp
  while str.eql?('end') == false
    puts('Введите строку, для завершения введите end: ')
    string_list[i] = str
    i += 1
    str = gets.chomp
  end
  p 'Исходная последовательность'
  p string_list.empty? ? 'Empty string array' : string_list
  p 'Новая последовательность'
  p CheckString.check_string(string_list)
end
