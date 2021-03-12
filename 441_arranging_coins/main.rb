# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  i = 1
  while n > i
    n -= i
    i += 1
  end
  n < i ? i - 1 : i
end
