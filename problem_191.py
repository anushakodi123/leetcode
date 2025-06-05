class Solution:
    def hammingWeight(self, n: int) -> int:
        binary_digit = bin(n)[2:]
        return binary_digit.count('1')

s = Solution()
s.hammingWeight(5)