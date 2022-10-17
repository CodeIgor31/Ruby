# frozen_string_literal: true

# mod Belong2
module Belong2
  def self.belongs?(lambda, x_value, y_value)
    right = lambda.call(x_value)
    y_value == right
  end
end
