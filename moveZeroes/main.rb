def find_non_zero(nums, start)
  (start...nums.size).each do |i|
    return i if nums[i] != 0
  end
  nil
end

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  left = 0
  while true
    right = find_non_zero(nums, left)
    break if right.nil?

    nums[right], nums[left] = nums[left], nums[right]
    left += 1
  end
  nums
end

puts(move_zeroes([0, 1, 0, 3, 12]))
