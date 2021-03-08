# frozen_string_literal: true

# # @param {Integer} n
# # @return {String[]}
def fizz_buzz(n)
  (1..n).map do |num|
    fizz = (num % 3).zero?
    buzz = (num % 5).zero?

    if fizz && buzz
      'FizzBuzz'
    elsif fizz
      'Fizz'
    elsif buzz
      'Buzz'
    else
      num.to_s
    end
  end
end
