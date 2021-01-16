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
# @return {Integer[][]}
def level_order(result, node, level)
  return if node.nil?

  result.unshift([]) if result.size < level + 1
  result[-(level + 1)].push(node.val)

  level_order(result, node.left, level + 1)
  level_order(result, node.right, level + 1)
end

def level_order_bottom(root)
  result = []
  level_order(result, root, 0)
  result
end
