# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  return nums.size if nums.last < target
  return 0 if target < nums.first

  # Using binary search method.
  # Reference: https://qiita.com/mhiro216/items/58502fa8ada0c5877928#%E8%A7%A3%E6%B3%952
  left = 0
  right = nums.size - 1
  while left < right
    middle = (left + (right - left) / 2).to_i
    if nums[middle] >= target
      right = middle
    else
      left = middle + 1
    end
  end
  left
end
