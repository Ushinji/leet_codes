# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def depth(root_node)
  # Nodeがない場合は0を返す
  return 0 unless root_node

  left_depth = depth(root_node.left)
  right_depth = depth(root_node.right)

  # 値が大きいを選び、深さを1加算して上位へ返す
  if left_depth > right_depth
    left_depth + 1
  else
    right_depth + 1
  end
end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  return 0 if root.empty?

  root_node = TreeNode.new(root[0])
  root_node.left = TreeNode.new(root[1])
  root_node.right = TreeNode.new(root[2])
  root_node.left.left = TreeNode.new(root[3])
  root_node.left.right = TreeNode.new(root[4])
  root_node.right.left = TreeNode.new(root[5])
  root_node.right.right = TreeNode.new(root[6])

  depth(root_node)
end

puts max_depth([3,9,20,nil,nil,15,7])

