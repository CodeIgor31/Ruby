# frozen_string_literal: true

# SamuNum module
module SameNum
  def self.same_nums(list)
    counter = list.length.positive? ? 1 : 0
    max = list.length.positive? ? 1 : 0
    (1..list.length).each do |i|
      counter += 1 if list[i].eql?(list[i - 1])
      unless list[i].eql?(list[i - 1])
        max = counter > max ? counter : max
        counter = 1
      end
    end
    max
  end
end
