class Solver
  def factorial(number)
    raise ArgumentError, 'Argument must be a non-negative integer' unless number.is_a?(Integer) && number >= 0

    return 1 if number.zero?

    (1..number).reduce(:*)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    if (number % 15).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end
