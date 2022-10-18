# frozen_string_literal: true

# To correct strings
module CheckString
  @reg = /\d/
  @count = 0
  def self.check_string(string_list)
    result = Array[]
    string_list.each do |str|
      tech_arr = []
      result.push(correcting(str, tech_arr).join(' '))
    end
    string_list.empty? ? 'Empty string array' : result
  end

  def self.correcting(str, tech_arr)
    str.split.each do |word|
      tech_arr.push(match?(word)) unless match?(word).nil?
    end
    tech_arr
  end

  def self.match?(word)
    if !word.match(/\W/).nil?
      @count += 1
      return nil
    elsif word.start_with? @reg
      word[0] = '_'
      @count += 1
    end
    word
  end

  def self.counter
    @count
  end
end
