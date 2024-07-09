# String Calculator

A simple string calculator that can handle comma-separated numbers, newline-delimited numbers, and custom delimiters. It also raises an exception for negative numbers.

## Features

- Add a string of comma-separated numbers.
- Handle new lines between numbers (instead of commas).
- Support different delimiters specified at the beginning of the string.
- Throw an exception for negative numbers, listing all negative numbers in the exception message.

## Requirements

- Ruby
- Bundler

## Installation

1. **Clone the repository:**

    ```sh
    git clone https://github.com/jayeshpatil01/string_calculator.git
    cd string_calculator
    ```

2. **Install the dependencies:**

    ```sh
    bundle install
    ```

## Usage

To use the `StringCalculator` class, you can run it in an IRB session or include it in your Ruby scripts.

### Example

```ruby
require_relative 'lib/string_calculator'

calculator = StringCalculator.new
puts calculator.add("") # Output: 0
puts calculator.add("1") # Output: 1
puts calculator.add("1,5") # Output: 6
puts calculator.add("1\n2,3") # Output: 6
puts calculator.add("//;\n1;2") # Output: 3

# Uncomment to see exception handling
# puts calculator.add("1,-2,3") # Raises exception: negative numbers not allowed: -2
# puts calculator.add("//;\n1;-2;-3") # Raises exception: negative numbers not allowed: -2, -3
