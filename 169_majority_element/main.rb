# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  length = (nums.size.to_f / 2).ceil
  memo = Hash.new(0)
  nums.each do |num|
    memo[num] += 1
    return num if memo[num] >= length
  end
end
