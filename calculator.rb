# Class to add numbers from string
class Calculator
  def add(string)
    # Splitting a string based on ','
    # Converting each char to integer
    # Sum of all numbers
    if string.start_with?('//')
      splitted_string = string.split("\n")
      number_string = splitted_string.last
      delimiter_string = splitted_string.first
      delimiter = delimiter_string.split('//').last
      number_list = number_string.split(/[#{delimiter}]/).map(&:to_i)
    else
      number_list = string.split(/[,;\r\n]/).map(&:to_i)
    end
    negative_numbers = number_list.select { |number| number.negative? }
    return "negative numbers not allowed #{negative_numbers.join(',')}" unless negative_numbers.empty?

    number_list.sum
  end
end
