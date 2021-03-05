# frozen_string_literal: true

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
def sum_leaves(node, is_left = false)
  return 0 if node.nil?

  return node.val if is_left && node.left.nil? && node.right.nil?

  sum_leaves(node.left, true) + sum_leaves(node.right)
end

def sum_of_left_leaves(root)
  return 0 if root.nil?

  sum_leaves(root)
end
