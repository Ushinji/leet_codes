# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def inorder(node, list)
  return if node.nil?
  inorder(node.left, list)
  list.push(node.val)
  inorder(node.right, list)
end

# @param {TreeNode} root
# @return {TreeNode}
def increasing_bst(root)
  list = []
  inorder(root, list)

  result = TreeNode.new(list[0])
  ans = result
  (1..list.size-1).each do |i|
    next if list[i].nil?
    ans.right = TreeNode.new(list[i])
    ans = ans.right
  end
  result
end

root = [5,3,6,2,4,nil,8,1,nil,nil,nil,7,9]

root_node = TreeNode.new(root[0])
root_node.left = TreeNode.new(root[1])
root_node.right = TreeNode.new(root[2])

root_node.left.left = TreeNode.new(root[3])
root_node.left.right = TreeNode.new(root[4])
root_node.right.left = TreeNode.new(root[5])
root_node.right.right = TreeNode.new(root[6])

root_node.left.left.left = TreeNode.new(root[7])
root_node.left.left.right = TreeNode.new(root[8])
root_node.left.right.left = TreeNode.new(root[9])
root_node.left.right.right = TreeNode.new(root[10])
root_node.right.right.left = TreeNode.new(root[11])
root_node.right.right.right = TreeNode.new(root[12])

puts increasing_bst(root_node)
