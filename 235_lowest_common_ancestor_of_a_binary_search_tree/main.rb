# frozen_string_literal: true

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

def find_ancestor(root, p, q)
  return root if [p.val, q.val].include?(root.val)
  return root if p.val < root.val && root.val < q.val

  if q.val < root.val
    find_ancestor(root.left, p, q)
  else
    find_ancestor(root.right, p, q)
  end
end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  if p.val <= q.val
    find_ancestor(root, p, q)
  else
    find_ancestor(root, q, p)
  end
end
