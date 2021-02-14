# frozen_string_literal: true

# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
  return false if num.zero?
  return true if num == 1

  num /= 5 while (num % 5).zero?

  num /= 3 while (num % 3).zero?

  num /= 2 while (num % 2).zero?

  num == 1
end
