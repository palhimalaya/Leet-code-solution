def three_sum(nums)
  triplets = []
  len = nums.length
  return [] if len < 3
  nums = nums.sort
  (0..len-2).each do |i|
      left = i + 1
      right = len - 1
      while left < right
          sum = nums[i] + nums[left] + nums[right]
          if sum == 0
              triplets << [nums[i],nums[left],nums[right]]
              left += 1   while left < right && nums[left] == nums[left+1]
              left += 1
          elsif sum > 0
              right -= 1
          else
              left += 1
          end 
      end
  end
  triplets.uniq
end
