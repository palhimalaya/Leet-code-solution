def roman_to_int(s)
  hash = {
  'I'=> 1,
  'V'=> 5,
  'X'=> 10,
  'L'=> 50,
  'C'=> 100,
  'D'=> 500,
  'M'=> 1000
}

  total = 0

  s.each_char.with_index do |char, index|
     if index < s.length - 1 && hash[char] < hash[s[index + 1]]
          total -= hash[char]
      else
          total += hash[char]
      end
  end
  total
end
