# @param {Integer} n
# @return {String}
def count_and_say(n)
  return '1' if n == 1

  before = count_and_say(n - 1)
  i = 0
  char = before[i]
  result = ''
  while i < before.size
    count = 0
    while char == before[i]
      count += 1
      i += 1
    end
    result += count.to_s + char
    char = before[i]
  end
  result
end
