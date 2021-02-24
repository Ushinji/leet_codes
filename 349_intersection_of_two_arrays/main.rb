# frozen_string_literal: true

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
  set1 = nums1.to_set
  set2 = nums2.to_set
  set1.select { |n| set2.include?(n) }
end
