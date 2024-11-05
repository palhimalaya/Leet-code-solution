def reverse(x)
  min_int, max_int = -2**31, 2**31 - 1

  reversed_str = x.abs.to_s.reverse
  reversed_int = reversed_str.to_i

  reversed_int = -reversed_int if x < 0

  return 0 if reversed_int < min_int || reversed_int > max_int

  reversed_int
end
