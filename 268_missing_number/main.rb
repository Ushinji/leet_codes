# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  hash = Hash.new(0)
  nums.each { |n| hash[n] = 1 }
  (0..nums.max).each do |n|
    return n if hash[n].zero?
  end
  nums.max + 1
end
