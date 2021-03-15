# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def min_moves(nums)
  return 0 if nums.empty?

  nums.sort!
  res = 0
  (0..(nums.size - 1)).each do |i|
    res += nums[i] - nums[0]
  end
  res
end
