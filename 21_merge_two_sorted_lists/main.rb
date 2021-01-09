# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  return nil if l1.nil? && l2.nil?
  return l2 if l1.nil?
  return l1 if l2.nil?

  if l2.val <= l1.val
    node1 = l1
    node2 = l2
  else
    node1 = l2
    node2 = l1
  end

  node = ListNode.new(node2.val, node2.next)
  result = node

  while !node1.nil? && !node.nil?
    if node.next.nil?
      node.next = ListNode.new(node1.val, node.next)
      node1 = node1.next
    elsif node1.val <= node.next.val
      node.next = ListNode.new(node1.val, node.next)
      node = node.next
      node1 = node1.next
    else
      node = node.next
    end
  end
  result
end
