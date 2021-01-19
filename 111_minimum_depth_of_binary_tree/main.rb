# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
  check_depth(root)
end

def check_depth(node)
  return 0 if node.nil?

  left = check_depth(node.left)
  right = check_depth(node.right)

  return 1 if left.zero? && right.zero?
  return left + 1 if right.zero?
  return right + 1 if left.zero?

  [left, right].min + 1
end
