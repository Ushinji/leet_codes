# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse(head, node)
  return head if node.nil?

  new_head = ListNode.new(node.val)
  new_head.next = head

  reverse(new_head, node.next)
end

def reverse_list(head)
  reverse(nil, head)
end
