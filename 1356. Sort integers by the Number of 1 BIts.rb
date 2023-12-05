# @param {Integer[]} arr
# @return {Integer[]}
def sort_by_bits(arr)
  max_bits = arr.max_by { |num| num.to_s(2).count("1") }.to_s(2).count("1")
  buckets = Array.new(max_bits + 1) { [] }

  arr.each do |num|
    bits = num.to_s(2).count("1")
    buckets[bits] << num
  end

  sorted_arr = []
  buckets.each do |bucket|
    sorted_arr.concat(bucket.sort)
  end

  sorted_arr
end