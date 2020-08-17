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
  current_node = ListNode.new
  first_node = current_node
  next_node = nil
  l1_c = l1
  l2_c = l2
  while !l1_c.nil? || !l2_c.nil? do
      digit = 0
      val = current_node.val + l1_c&.val.to_i + l2_c&.val.to_i
      if val >= 10 then
          val = val - 10
          digit = 1
      end
      current_node.val = val

      l1_c = l1_c&.next
      l2_c = l2_c&.next
      if !l1_c.nil? || !l2_c.nil? || digit == 1 then
          next_node = ListNode.new(digit)
          current_node.next = next_node
          current_node = current_node.next 
      end
  end
  first_node
end
