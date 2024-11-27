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
      number_string.split(/[#{delimiter}]/).map(&:to_i).sum
    else
      string.split(/[,;\r\n]/).map(&:to_i).sum
    end
  end
end
