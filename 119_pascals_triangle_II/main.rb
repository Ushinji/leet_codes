# frozen_string_literal: true

# @param {Integer} row_index
# @return {Integer[]}

def get_next_row(row)
  result = [1]
  (1..(row.size - 1)).each { |i| result.push(row[i - 1] + row[i]) }
  result.push(1)
  result
end

def get_row(row_index)
  result = [1]
  (0...row_index).each { |_| result = get_next_row(result) }
  result
end
