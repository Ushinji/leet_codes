def single_number(nums)
  return nums.first if nums.size == 1
  nums.sort!
  result = nil
  idx = 0
  while idx < nums.size
    if nums[idx] != nums[idx+1]
      result = nums[idx]
      break
    end
    idx += 2
  end
  result ? result : nums.last
end
