# frozen_string_literal: true

require 'minitest/autorun'

require 'math_foo'

include first_part

# Testing
class TestFoo < Minitest::Test
  def test_zero_value
    assert_equal(math_foo(0.0, 0.0, 0.0), 'Check, x and r != 0')
  end

  def test_value
    assert_equal(math_foo(Math::PI, 0, 4).round(2), -1.00)
  end
end
