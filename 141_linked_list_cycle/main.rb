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
  node = head
  i = 0
  ids = []
  until node.nil?
    return true if ids.include?(node.object_id)

    ids.push(node.object_id)
    node = node.next
  end
  false
end
