class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers = extract_delimiter(numbers)

    numbers.split(/#{delimiter}|,|\n/).map(&:to_i).sum
  end

  private

  def extract_delimiter(numbers)
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = Regexp.escape(parts[0][2..-1])
      numbers = parts[1]
    else
      delimiter = /,|n/
    end
    [delimiter, numbers]
  end
end
