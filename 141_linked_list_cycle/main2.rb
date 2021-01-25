# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false if head.nil? || head.next.nil?

  slow = head
  fast = head.next
  while slow != fast
    return false if fast.nil? || fast.next.nil?

    slow = slow.next
    fast = fast.next.next
  end
  true
end
