# Given a string s, return the longest palindromic substring in s.

 

# Example 1:

# Input: s = "babad"
# Output: "bab"
# Explanation: "aba" is also a valid answer.
# Example 2:

# Input: s = "cbbd"
# Output: "bb"
 

# Constraints:

# 1 <= s.length <= 1000
# s consist of only digits and English letters.



def longest_palindrome(s)
    return s if s.length < 2
  
    start = 0
    max_len = 1
  
    for i in 0...s.length
      len1 = expand(s, i, i)
      len2 = expand(s, i, i + 1)
      len = [len1, len2].max
  
      if len > max_len
        start = i - (len - 1) / 2x    
        max_len = len
      end
    end
  
    s[start, max_len]
  end
  
  def expand(s, left, right)
    while left >= 0 && right < s.length && s[left] == s[right]
      left -= 1
      right += 1
    end
    right - left - 1
  end
  