class Solution:
    def countBits(self, n):
        result=[]
        for i in range(n+1):
            binary = bin(i)[2:]
            result.append(int((binary.count('1'))))
        return result
    
s = Solution()
print(s.countBits(2))