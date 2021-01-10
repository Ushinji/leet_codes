# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.empty?

  length = 1
  prev = nums[0]
  (1..nums.size - 1).each do |i|
    next if prev == nums[i]

    nums[length] = nums[i]
    prev = nums[length]
    length += 1
  end
  length
end
