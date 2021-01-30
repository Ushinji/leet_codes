# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  result = 0
  while n.positive?
    n /= 5
    result += n
  end
  result
end
