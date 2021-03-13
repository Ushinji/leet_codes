# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  set_nums = Set.new(nums.sort!)
  result = []
  (1...(nums.size + 1)).each do |i|
    result.append(i) unless set_nums.include?(i)
  end
  result
end
