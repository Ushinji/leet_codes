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
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  head = head.next while head && head.val == val

  node = head
  while node&.next
    if node.next.val == val
      node.next = node.next.next
    else
      node = node.next
    end
  end
  head
end
