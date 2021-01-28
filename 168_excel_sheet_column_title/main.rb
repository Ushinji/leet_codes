# frozen_string_literal: true

# @param {Integer} n
# @return {String}
def convert_to_title(n)
  result = ''
  until n.zero?
    n -= 1
    result += (n % 26 + 'A'.ord).chr
    n /= 26
  end
  result.reverse!
end
