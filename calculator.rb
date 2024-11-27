# Class to add numbers from string
class Calculator
  def add(string)
    # Splitting a string based on ','
    # Converting each char to integer
    # Sum of all numbers
    string.split(',').map(&:to_i).sum
  end
end
