# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  i = 0
  j = 0
  length = m
  memo = 0
  while i < m + n && j < n
    if length <= i
      nums1[i], nums2[j] = nums2[j], nums1[i]
      i = memo
      j += 1
      length += 1
      memo = 0
    elsif nums2[j] < nums1[i]
      nums1[i], nums2[j] = nums2[j], nums1[i]
      i += 1
      memo = i if memo.zero?
    else
      i += 1
    end
  end
end
