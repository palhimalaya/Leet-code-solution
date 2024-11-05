def int_to_roman(num)
  roman_numerals = [
    ["M", 1000],
    ["CM", 900],
    ["D", 500],
    ["CD", 400],
    ["C", 100],
    ["XC", 90],
    ["L", 50],
    ["XL", 40],
    ["X", 10],
    ["IX", 9],
    ["V", 5],
    ["IV", 4],
    ["I", 1]
  ]

  result = ""

  roman_numerals.each do |symbol, value|
    while num >= value
      result += symbol
      num -= value
    end
  end

  result
end
