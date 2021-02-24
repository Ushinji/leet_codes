# frozen_string_literal: true

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  hash = Hash.new(0)
  nums1.each { |n| hash[n] += 1 }

  result = []
  nums2.each do |n|
    if hash[n] >= 1
      result.append(n)
      hash[n] -= 1
    end
  end
  result
end
