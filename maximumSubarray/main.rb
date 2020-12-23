require "minitest"

include Minitest::Assertions

class << self
  attr_accessor :assertions
end
self.assertions = 0

def max_crossing_sum(nums, start, middle, last)
  sum = 0
  left_sum = -2147483648
  i = middle
  while start - 1 < i
    sum += nums[i]
    left_sum = sum if sum > left_sum
    i -= 1
  end

  sum = 0
  right_sum = -2147483648
  i = middle + 1
  while i <= last
    sum += nums[i]
    right_sum = sum if sum > right_sum
    i += 1
  end

  [left_sum + right_sum, left_sum, right_sum].max
end

def max_sub_array_sum(nums, start, last)
  return nums[start] if start == last

  middle = (start + last) / 2
  [
    max_sub_array_sum(nums, start, middle),
    max_sub_array_sum(nums, middle + 1, last),
    max_crossing_sum(nums, start, middle, last)
  ].max
end

# Maximum Subarray
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  return nums.first if nums.size == 1

  max_sub_array_sum(nums, 0, nums.size - 1)
end

puts max_sub_array([8, -19, 5, -4, 20])
