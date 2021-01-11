# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0
  val = x
  reverse = 0
  while val != 0
      reverse = reverse * 10 + val % 10
      val /= 10
  end
  x == reverse
end
