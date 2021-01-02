# O(n^2)
# # @param {Integer[]} nums
# # @param {Integer} target
# # @return {Integer[]}
# def two_sum(nums, target)
#     result = []
#     (0..nums.size-1).each do |i|
#         (i+1..nums.size-1).each do |j|
#             if nums[i] + nums[j] == target
#                 result.push(i)
#                 result.push(j)
#             end
#         end
#     end
#     result
# end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |n, i|
      search_key = target - n
      if hash.has_key?(search_key)
          return [i, hash[search_key]]
      else
          hash.store(n, i)
      end
  end
end
