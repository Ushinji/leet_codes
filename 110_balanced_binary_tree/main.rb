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
# @return {Boolean}
def is_balanced(root)
  check_depth(root) != -1
end

def check_depth(node)
  return 0 if node.nil?

  left_depth = check_depth(node.left)
  right_depth = check_depth(node.right)

  return -1 if right_depth < 0 || left_depth < 0
  return -1 if (right_depth - left_depth).abs > 1

  1 + [left_depth, right_depth].max
end

