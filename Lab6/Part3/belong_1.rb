# frozen_string_literal: true

# mod Belong1
module Belong1
  def self.belongs?(x_value, y_value)
    return 'Enter only numbers' if !x_value.match(/\D/).nil? || !y_value.match(/\D/).nil?

    right = yield x_value.to_f
    return 'Yes' if (y_value.to_f - right).zero?

    'No'
  end
end
