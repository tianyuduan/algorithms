# Given a BST, find the in-order successor of a given key in it.
# If the given key doesn't appear in the BST,
# then return the next greater key (if any) present in the BST.
# An in-order successor of a node in a BST is the next node in
# the in-order traversal of it. Consider the below BST:
#
#       15
#     /    \
#   10      20
#  /  \     / \
# 8   12  16   25
#
# - The in-order successor of 8 is 10
# - The in-order successor of 12 is 15
# - The in-order successor of 25 doesn't exist
