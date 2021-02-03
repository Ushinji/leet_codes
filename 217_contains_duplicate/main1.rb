# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  hash = Hash.new(0)
  nums.each do |num|
    return true if hash.key?(num)

    hash[num] = 1
  end
  false
end
