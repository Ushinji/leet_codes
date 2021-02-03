# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  Set.new(nums).size != nums.size
end
