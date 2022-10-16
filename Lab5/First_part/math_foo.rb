# frozen_string_literal: true

# To count value
module FirstPart
  def self.math_foo(x_value, z_value, r_value)
    result = Math.cos(x_value + 3.1 * z_value) / Math.tan(x_value / r_value)
    result.nan? || result.infinite? ? 'Check, x and r != 0' : result
  end
end
