# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  positions = []
  positions.push(-1)
  s.chars.each_with_index do |c, i|
    positions.push(i) if c == ' '
  end
  positions.push(s.size)

  i = positions.size - 1
  result = 0
  while 0 < i
    if positions[i] - positions[i - 1] > 1
      result = positions[i] - positions[i - 1] - 1
      break
    end
    i += -1
  end
  result
end
