# Middle of the Linked List
# Solution
# Given a non-empty, singly linked list with head node head, return a middle node of linked list.

# If there are two middle nodes, return the second middle node.



# Example 1:

# Input: [1,2,3,4,5]
# Output: Node 3 from this list (Serialization: [3,4,5])
# The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
# Note that we returned a ListNode object ans, such that:
# ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.
# Example 2:

# Input: [1,2,3,4,5,6]
# Output: Node 4 from this list (Serialization: [4,5,6])
# Since the list has two middle nodes with values 3 and 4, we return the second one.


# Note:

# The number of nodes in the given list will be between 1 and 100.

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def input(input_arr = [])
  return if input_arr.size == 0

  head = ListNode.new(input_arr[0])
  position = head
  input_arr[1..-1].each do |e|
    position.next = ListNode.new(e)
    position = position.next
  end
  head
end

def output(head)
  return unless head
  output_str = ""
  while head
    output_str += "-> #{head.val}"
    head = head.next
  end
  output_str
end

def middle_node(head)
    i = head
    mid = i
    while i do
        i = i.next
        if i
            i = i.next
            mid = mid.next
        end
    end
    mid
end



head = input([1,2,3,4,5,6, 7])
mid = middle_node(head)
p output(mid)
