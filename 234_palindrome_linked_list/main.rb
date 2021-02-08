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
# @return {Boolean}
def is_palindrome(head)
  list = []
  until head.nil?
    list.push(head.val)
    head = head.next
  end

  i = 0
  size = list.size
  max_i = (size.to_f / 2).ceil # It is enough to check up to half the index of the array.
  while i < max_i
    return false unless list[i] == list[size - i - 1]

    i += 1
  end
  true
end
