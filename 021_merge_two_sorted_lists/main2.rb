# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  return l1 || l2 if l1.nil? || l2.nil?

  if l1.val < l2.val
    l1.next = merge_two_lists(l1.next, l2)
    l1
  else
    l2.next = merge_two_lists(l2.next, l1)
    l2
  end
end
