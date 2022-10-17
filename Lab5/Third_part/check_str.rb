# frozen_string_literal: true

# To correct strings
module CheckString
  @reg = /\d/
  def self.check_string(string_list)
    result = Array[]
    string_list.each do |str|
      result.push(correcting(str).join(' '))
    end
    string_list.empty? ? 'Empty string array' : result
  end

  def self.correcting(str)
    tech_arr = []
    arr = str.split
    arr.each do |word|
      next unless word.match(/\W/).nil?

      word[0] = '_' if word.start_with? @reg
      tech_arr.push(word)
    end
    tech_arr
  end
end
