# frozen_string_literal: true

def range_val(start, finish)
  start == finish ? start.to_s : "#{start}->#{finish}"
end

# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  return [] if nums.empty?

  result = []
  start = nums[0]
  (0..nums.size - 2).each do |i|
    if nums[i] + 1 < nums[i + 1]
      result.append(range_val(start, nums[i]))
      start = nums[i + 1]
    end
  end

  result.append(range_val(start, nums.last))
  result
end
