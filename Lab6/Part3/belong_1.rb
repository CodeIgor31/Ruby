# frozen_string_literal: true

# mod Belong1
module Belong1
  def self.belongs?(x_value, y_value)
    right = yield x_value
    y_value == right
  end
end
