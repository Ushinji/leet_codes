# frozen_string_literal: true

# @param {Integer} n
# @return {Boolean}
def is_power_of_four(n)
  return false if n < 1

  n /= 4 while (n % 4).zero?
  n == 1
end
