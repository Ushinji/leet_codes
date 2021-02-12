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

def root_to_path(node, result, path)
  if path.empty?
    path = node.val.to_s
  else
    path += "->#{node.val}"
  end

  if node.left.nil? && node.right.nil?
    result.push(path)
    return
  end

  root_to_path(node.left, result, path) if node.left
  root_to_path(node.right, result, path) if node.right
end

# @param {TreeNode} root
# @return {String[]}
def binary_tree_paths(root)
  result = []
  return result if root.nil?

  root_to_path(root, result, '')
  result
end
