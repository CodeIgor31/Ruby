# frozen_string_literal: true

# mod SumRow2
module SumRow2
  def self.sum_row2(accuracy)
    return 'Error' if accuracy != 10**-3 && accuracy != 10**-4

    res_sum = sum = 0
    counter = 1
    result = (1..100).to_a.collect { |k| sum += 1.0 / (k * (k + 1)) }
    result.each_cons(2) do |curr_sum, next_sum|
      res_sum = curr_sum
      counter += 1
      break if next_sum - curr_sum < accuracy
    end
    [res_sum, counter]
  end
end
