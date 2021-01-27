# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head_a
# @param {ListNode} head_b
# @return {ListNode}
def get_intersection_node(head_a, head_b)
  node_a = head_a
  node_b = head_b
  while node_a != node_b
    node_a = node_a.nil? ? head_b : node_a.next
    node_b = node_b.nil? ? head_a : node_b.next
  end
  node_a
end
