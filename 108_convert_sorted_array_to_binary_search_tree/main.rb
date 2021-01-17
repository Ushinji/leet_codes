# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def to_bst(nums, start, finish)
  return nil if start > finish

  mid = (finish + start) / 2
  node = TreeNode.new(nums[mid])

  node.left = to_bst(nums, start, mid - 1)
  node.right = to_bst(nums, mid + 1, finish)

  node
end

def sorted_array_to_bst(nums)
  to_bst(nums, 0, nums.size - 1)
end
