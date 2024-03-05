# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  merged = (nums1 + nums2).sort
  length = merged.length
  
  if length.even?
      (merged[length / 2 - 1] + merged[length / 2]) / 2.0
  else
      merged[length / 2].to_f
  end
end


# another methods
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  nums1, nums2 = nums2, nums1 if nums1.length > nums2.length
  
  x, y = nums1.length, nums2.length
  low, high = 0, x
  
  while low <= high
      partition_x = (low + high) / 2
      partition_y = (x + y + 1) / 2 - partition_x
      
      max_left_x = (partition_x == 0) ? -Float::INFINITY : nums1[partition_x - 1]
      min_right_x = (partition_x == x) ? Float::INFINITY : nums1[partition_x]
      
      max_left_y = (partition_y == 0) ? -Float::INFINITY : nums2[partition_y - 1]
      min_right_y = (partition_y == y) ? Float::INFINITY : nums2[partition_y]
      
      if max_left_x <= min_right_y && max_left_y <= min_right_x
          if (x + y) % 2 == 0
              return ( [max_left_x, max_left_y].max + [min_right_x, min_right_y].min ) / 2.0
          else
              return [max_left_x, max_left_y].max.to_f
          end
      elsif max_left_x > min_right_y
          high = partition_x - 1
      else
          low = partition_x + 1
      end
  end
end