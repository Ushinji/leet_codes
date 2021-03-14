# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target):
    i = 0
    for num in nums:
        if target <= num:
            return i
        i += 1

    return len(nums)
