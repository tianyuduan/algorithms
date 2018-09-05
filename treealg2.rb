# Given a binary search tree, write a function kthSmallest to find the kth smallest element in it.
# Note: You may assume k is always valid, 1 ≤ k ≤ BST's total elements.
#
# Example 1:
#
# Input: root = [3,1,4,null,2], k = 1
#
#    3
#   / \
#  1   4
#   \
#    2
#
# Output: 1

# Example 2:
#
# Input: root = [5,3,6,2,4,null,null,1], k = 3
#
#        5
#       / \
#      3   6
#     / \
#    2   4
#   /
#  1
#
# Output: 3
# Follow up: What if the BST is modified (insert/delete operations) often and
# you need to find the kth smallest frequently? How would you optimize the kthSmallest routine?

#simply traverse the tree in order into an array and then use the k to index out the kth element

# psuedo code
# left sub tree first
# root
# right sub Tree

def InOrderKth(root, kth)
  inOrderArray = []

  if (root.left && root.right == null)
    inOrderArray << root
  end

    inOrderArray << InOrderKth(root.left, kth)

    inOrderArray.push(root)
    
    inOrderArray << InOrderKth(root.right, kth)
return inOrderArray[kth - 1]
end
