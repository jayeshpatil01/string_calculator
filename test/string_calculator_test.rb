require 'minitest/autorun'
require_relative '../lib/string_calculator'

class StringCalculatorTest < Minitest::Test
  def test_add_empty_string
    calculator = StringCalculator.new
    assert_equal 0, calculator.add("")
  end

  def test_add_single_number
    calculator = StringCalculator.new
    assert_equal 1, calculator.add("1")
  end

  def test_add_two_numbers
    calculator = StringCalculator.new
    assert_equal 6, calculator.add("1,5")
  end

  def test_add_multiple_numbers
    calculator = StringCalculator.new
    assert_equal 10, calculator.add("1,2,3,4")
  end

  def test_add_newline_delimiter
    calculator = StringCalculator.new
    assert_equal 6, calculator.add("1\n2,3")
  end
end
