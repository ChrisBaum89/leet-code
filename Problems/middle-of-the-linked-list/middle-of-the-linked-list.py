# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def middleNode(self, head: Optional[ListNode]) -> Optional[ListNode]:
        tmp = head
        while tmp and tmp.next:
            head = head.next
            tmp = tmp.next.next
        return head


    # need a way to count the number of nodes in the list
    # need to find the middle number of the count
    # need to iterate through list # of times which is half of total
    # need to default to second middle node


    # head = 1
    # tmp = 3
    #---
    # head = 2
    # tmp = 5
    #---
    # head = 3
    # tmp = 7
    #---
    # head = 4
    # tmp = 9
    # ---
    # head = 5
    # return 5...