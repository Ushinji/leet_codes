# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  num1 = 0
  digit = 1
  until l1.nil?
    num1 += l1.val * 10**(digit - 1)
    digit += 1
    l1 = l1.next
  end

  num2 = 0
  digit = 1
  until l2.nil?
    num1 += l2.val * 10**(digit - 1)
    digit += 1
    l2 = l2.next
  end

  sum = num1 + num2

  head = ListNode.new
  node = head
  sum.to_s.chars.reverse.each_with_index do |c, i|
    node.val = c.to_i
    node.next = ListNode.new if sum.to_s.size != i + 1
    node = node.next
  end

  head
end
