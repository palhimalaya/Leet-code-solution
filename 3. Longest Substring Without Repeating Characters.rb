# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  start_index = 0
  max_length = 0
  char_index_map = {}

  s.each_char.with_index do |char, end_index|
    if char_index_map.key?(char) && char_index_map[char] >= start_index
      start_index = char_index_map[char] + 1
    end

    char_index_map[char] = end_index
    max_length = [max_length, end_index - start_index + 1].max
  end

  max_length
end