# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] if num_rows.zero?
  return [[1]] if num_rows == 1

  result = [[1]]
  (1...num_rows).each do |i|
    before = result[i - 1]

    row = [1]
    (1..(before.size - 1)).each { |j| row.push(before[j - 1] + before[j]) }
    row.push(1)

    result.push(row)
  end
  result
end
