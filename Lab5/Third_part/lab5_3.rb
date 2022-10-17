# frozen_string_literal: true

require_relative 'check_str'

# Main
module Main
  include CheckString

  string_list = Array[]
  loop do
    puts('Введите строку, для завершения введите end: ')
    str = gets.chomp
    break if str.eql?('end') == true

    string_list.push(str)
  end
  p 'Исходная последовательность'
  p string_list.empty? ? 'Empty string array' : string_list
  p 'Новая последовательность'
  p CheckString.check_string(string_list)
end
