def my_atoi(s)
  int = s.to_i
  
  if int < 0
      [-2147483648, int].max
  else
      [2147483647, int].min
  end  
end
