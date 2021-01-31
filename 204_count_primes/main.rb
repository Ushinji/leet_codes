# frozen_string_literal: true

def prime?(n)
  return false if n <= 1
  return true if [2, 3].include?(n)
  return false if n.even? || (n % 3).zero?

  3.step(Math.sqrt(n).to_i, 2).each.all? { |i| n % i != 0 }
end

# @param {Integer} n
# @return {Integer}
def count_primes(n)
  (0..(n - 1)).inject(0) { |acc, i| prime?(i) ? acc + 1 : acc }
end
