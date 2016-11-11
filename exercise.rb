class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method

    # Create an empty string
    new_str = Array.new

    # Take the string and seperate each word.
        # Check each word
    # IF - over 4 chars long and is capitalize, replace with Markar
    # If - just over 4 char long replace with markar.
    # ELSE - Put the word in the string
    # end
    str.split(' ').each do |word|
      if word.length > 4 
        if word == word.capitalize
          new_str << word.gsub(/(\w+)/, "Marklar")
        else
          new_str << word.gsub(/(\w+)/, "marklar")
        end
      else
        new_str << word
      end
    end

    new_str.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method

    # Return 0 unless number is higher than 2
    return 0 unless nth > 2

    # Init fibonacci sequence
    fib_sequence = [1, 1]

    # While INPUT number is larger than fib_sequence
      # ADD to the end of fib_sequence
    while fib_sequence.size < nth
      fib_sequence << fib_sequence[-1] + fib_sequence[-2]
      nth - 1
    end

    # Selet only even numbers, then add them together
    fib_sequence.select{ |i| i.even?}.inject(:+)
  end

end