# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  hash = Hash.new(0)
  nums.each_with_index do |num, i|
    return true if hash.key?(num) && (hash[num] - i + 1).abs < k

    hash[num] = i
  end
  false
end
