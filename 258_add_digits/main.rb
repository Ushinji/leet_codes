# @param {Integer} num
# @return {Integer}
def add_digits(num)
  while num.size > 1
    value = 0
    num.to_s.chars.each { |c| value += c.to_i }
    num = value.to_s
  end
  num.to_i
end
