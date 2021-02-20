# frozen_string_literal: true

# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  return false if n < 1

  n /= 3 while (n % 3).zero?

  n == 1
end
