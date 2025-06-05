class Solution:
    def reverseBits(self, n: int) -> int:
        binary_number = f"{n:032b}"
        reversed_string_binary = "".join(list(reversed(str(binary_number))))
        decimal = int(reversed_string_binary, 2)
        return decimal
    
s = Solution()
print(s.reverseBits(43261596))