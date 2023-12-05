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
  result = ListNode.new(0)
  current = result
  carry = 0
  
  while l1 || l2 || carry > 0
    x = l1 ? l1.val : 0
    y = l2 ? l2.val : 0
    sum = x + y + carry

    current.next = ListNode.new(sum % 10)
    current = current.next

    carry = sum / 10

    l1 = l1.next if l1
    l2 = l2.next if l2
  end
  result.next
end