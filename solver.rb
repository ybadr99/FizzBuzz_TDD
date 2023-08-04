class Solver 
    def factorial(n)
        raise ArgumentError.new("Argument must be a non-negative integer") if n < 0
        return 1 if n == 0
        (1..n).reduce(:*)
      end

      def reverse(word)
        word.reverse
      end

      def fizzbuzz(n)
        if n % 15 == 0
          return "fizzbuzz"
        elsif n % 3 == 0
          return "fizz"
        elsif n % 5 == 0
          return "buzz"
        else
          return n.to_s
        end
      end
end 