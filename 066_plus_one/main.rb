def plus_one_digit(digits, pos)
  if pos < 0
    digits.unshift(1)
    return
  end

  num = digits[pos] + 1
  if num < 10
    digits[pos] = num
  else
    digits[pos] = 0
    plus_one_digit(digits, pos - 1)
  end
end

# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  plus_one_digit(digits, digits.size - 1)
  digits
end
