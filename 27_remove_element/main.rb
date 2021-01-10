# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  return 0 if nums.empty?

  length = 0
  (0..nums.size - 1).each do |i|
    next if nums[i] == val

    nums[length] = nums[i]
    length += 1
  end
  length
end
