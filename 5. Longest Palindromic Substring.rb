# @param {String} s
# @return {String}
def longest_palindrome(s)
  start = 0
   finish = 0

   (0...s.length).each do |i|
       len1 = expand_around_center(s, i, i)
       len2 = expand_around_center(s, i, i + 1)
       max_len = [len1, len2].max
       if max_len > finish - start
           start = i - (max_len - 1) / 2
           finish = i + max_len / 2
       end
   end

   s[start..finish]
end

def expand_around_center(s, left, right)
   while left >= 0 && right < s.length && s[left] == s[right]
       left -= 1
       right += 1
   end
   right - left - 1
end