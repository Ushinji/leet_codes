# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
  max = nil
  second_max = nil
  third_max = nil

  (0..(nums.size - 1)).each do |i|
    num = nums[i]
    if max.nil? || max <= num
      next if max == num

      third_max = second_max
      second_max = max
      max = num
    elsif second_max.nil? || second_max <= num
      next if second_max == num

      third_max = second_max
      second_max = num
    elsif third_max.nil? || third_max <= num
      next if third_max == num

      third_max = num
    end
  end

  third_max || max
end
