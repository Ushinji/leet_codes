# @param {Integer} x
# @return {Integer}
def reverse(x)
  is_minus = x < 0
  str = is_minus ? (-1 * x).to_s : x.to_s
  reverse = str.reverse
  result = is_minus ? -1 * reverse.to_i : reverse.to_i

  if result < -2147483648 || 2147483647 < result
    return 0
  else
    return result
  end
end

puts reverse(1534236469) == 0
puts reverse(123) == 321
puts reverse(-123) == -321
puts reverse(120) == 21
