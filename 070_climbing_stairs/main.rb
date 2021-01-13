# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  counts = []
  counts[0] = 1
  counts[1] = 1
  i = 2
  while i <= n
    counts[i] = counts[i - 1] + counts[i - 2]
    i += 1
  end
  counts[n]
end
