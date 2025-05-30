
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
# class Solution:
#     result = []
#     count = 0
#     def invertTree(self, root):
#         if root is None or root.right is None or root.left is None:
#             return
#         if Solution.count == 0:
#             Solution.result.extend([root.val, root.right.val, root.left.val])
#         else:
#             Solution.result.extend([root.right.val, root.left.val])
#         Solution.count += 1
#         root1 = root.right
#         self.invertTree(root1)
#         root2 = root.left
#         self.invertTree(root2)
#         return Solution.result

class Solution:
    def invertTree(self, root):
        if root is None:
            return None

        left_inverted = self.invertTree(root.right)
        right_inverted = self.invertTree(root.left)

        root.left = left_inverted
        root.right = right_inverted

        return root

root = TreeNode(4,
    TreeNode(2,
        TreeNode(1),
        TreeNode(3)
    ),
    TreeNode(7,
        TreeNode(6),
        TreeNode(9)
    )
)


print(Solution().invertTree(root))


        
        