# @param {Integer} x
# @return {Integer}
# def reverse(x)
#   is_minus = x < 0
#   str = is_minus ? (-1 * x).to_s : x.to_s
#   reverse = str.reverse
#   result = is_minus ? -1 * reverse.to_i : reverse.to_i

#   if result < -2147483648 || 2147483647 < result
#     return 0
#   else
#     return result
#   end
# end

def reverse(x)
  val = x.abs
  result = 0
  while(val != 0)
    num = val % 10
    result = result * 10 + num
    val /= 10
  end

  result = -1 * result if x < 0
  return 0 if result < -2147483648 || 2147483647 < result
  result
end

puts reverse(1534236469)
puts reverse(123)
puts reverse(-123)
puts reverse(120)
