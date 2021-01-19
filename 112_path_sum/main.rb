# Definition for a binary tree root.
# class Treeroot
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum)
  return false if root.nil?

  diff_count = target_sum - root.val
  return true if root.left.nil? && root.right.nil? && diff_count.zero?

  has_path_sum(root.left, diff_count) || has_path_sum(root.right, diff_count)
end
