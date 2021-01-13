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
def delete_duplicates(head)
  return nil if head.nil?

  result = ListNode.new(head.val)
  node = result
  current = head.next
  num = node.val

  until current.nil?
    if num != current.val
      node.next = ListNode.new(current.val)
      node = node.next
      num = node.val
    end
    current = current.next
  end

  result
end
