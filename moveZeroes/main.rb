# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  left = 0
  right = 0
  while right < nums.length
    if nums[right] != 0
      nums[right], nums[left] = nums[left], nums[right]
      left += 1
    end
    right += 1
  end
  nums
end

puts(move_zeroes([0, 1, 0, 3, 12]))
