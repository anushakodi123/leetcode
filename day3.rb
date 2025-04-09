# Example 1:

# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.
# Example 2:

# Input: s = "bbbbb"
# Output: 1
# Explanation: The answer is "b", with the length of 1.
# Example 3:

# Input: s = "pwwkew"
# Output: 3
# Explanation: The answer is "wke", with the length of 3.
# Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
 

# Constraints:

# 0 <= s.length <= 5 * 104
# s consists of English letters, digits, symbols and spaces.


# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    char_index = {}
    start = 0
    max_length = 0
  
    s.chars.each_with_index do |char, end_idx|
      if char_index.key?(char) && char_index[char] >= start
        start = char_index[char] + 1
      else
        current_length = end_idx - start + 1
        max_length = [max_length, current_length].max
      end
      char_index[char] = end_idx
    end
  
    max_length
  end

  
  #sliding window technique
  # The sliding window technique is a common approach used in algorithm design to solve problems involving subarrays or substrings.
  # It involves maintaining a window (a range of elements) that can expand or contract based on certain conditions.
  # The window is typically defined by two pointers (or indices) that represent the start and end of the current range.
  # The goal is to find a solution by adjusting the window size while iterating through the input data.
  # The sliding window technique is particularly useful for problems that require finding the maximum or minimum value within a range,
  # counting distinct elements, or checking for specific conditions within a subarray or substring.
  # It can significantly reduce the time complexity of certain problems compared to brute-force approaches.
  # The sliding window technique is often used in problems involving arrays or strings where you need to find a contiguous subarray or substring that meets certain criteria.
  # It is particularly useful for problems that require finding the maximum or minimum value within a range,