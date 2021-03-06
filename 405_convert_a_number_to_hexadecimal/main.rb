# frozen_string_literal: true

# @param {Integer} num
# @return {String}
def to_hex(num)
  return '0' if num.zero?

  list = %w[0 1 2 3 4 5 6 7 8 9 a b c d e f]
  result = ''
  while !num.zero? && result.size < 8
    result = list[num & 15] + result
    num = num >> 4
  end
  result
end
