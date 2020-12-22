require "minitest"
include Minitest::Assertions
class << self
  attr_accessor :assertions
end
self.assertions = 0


def max_crossing_sum(nums, start, middle, last)
  sum = 0
  left_sum = -10000
  (start..middle).each do |i|
    sum = sum + nums[i]
    left_sum = sum if sum > left_sum
  end

  sum = 0
  right_sum = -1000
  (middle+1..last).each do |i|
    sum = sum + nums[i]
    right_sum = sum if sum > left_sum
  end
  [left_sum+right_sum, left_sum, right_sum].max
end

def max_sub_array_sum(nums, start, last)
  return nums[start] if start == last
  middle = (start + last) / 2
  [
    max_sub_array_sum(nums, start, middle),
    max_sub_array_sum(nums, middle+1, last),
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

puts max_sub_array([-2,1,-3,4,-1,2,1,-5,4])

