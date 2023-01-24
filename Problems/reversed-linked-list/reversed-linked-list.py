# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def reverseList(self, head: Optional[ListNode]) -> Optional[ListNode]:
        prev = None
        while(head):
            nxt = head.next
            head.next = prev
            prev = head
            head = nxt
        return prev
            
# prev = None
# head = 1
# head.next = 2
# nxt = 2
# head.next = none
# prev = 1
# head = 2

# prev = 1
# head = 2
# head.next = 3
# next = 3
# head.next = 1
# prev = 2
# head = 3

# prev = 2
# head = 3
# head.next = 4
# next = 4
# head.next = 2
# prev = 3
# head = 4
