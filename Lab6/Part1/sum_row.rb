# frozen_string_literal: true

# mod SumRow
module SumRow
  def self.sum_row(accuracy)
    return 'Error' if accuracy != 10**-3 && accuracy != 10**-4

    vsum = sum_curr = sum = 0.5
    k = 2
    loop do
      vsum += 1.0 / (k * (k + 1))
      k += 1
      break if vsum - sum_curr < accuracy

      sum_curr = sum = vsum
    end
    [sum, k - 1]
  end
end
