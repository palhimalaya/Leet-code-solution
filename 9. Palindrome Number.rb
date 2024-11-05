def is_palindrome(x)
  min_int, max_int = -2**31, 2**31 - 1
  return false if x < min_int || x > max_int

  if(x.to_s === x.to_s.reverse)
      true
  else
      false
  end
end
