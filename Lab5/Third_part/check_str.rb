# frozen_string_literal: true

# To correct strings
module CheckString
  @reg = /\d/
  def self.check_string(string_list)
    result = Array[]
    string_list.each do |str|
      next unless str.match(/\W/).nil?

      str[0] = '_' if str.start_with? @reg
      result.push(str)
    end
    string_list.empty? ? 'Empty string array' : result
  end
end
