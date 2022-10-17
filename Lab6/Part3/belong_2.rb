# frozen_string_literal: true

# mod Belong2
module Belong2
  def self.belongs?(lambda, x_value, y_value)
    return 'Enter only numbers' if !x_value.match(/\D/).nil? || !y_value.match(/\D/).nil?

    right = lambda.call(x_value.to_f)
    return 'Yes' if (y_value.to_f - right).zero?

    'No'
  end
end
