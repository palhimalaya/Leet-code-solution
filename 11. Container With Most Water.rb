def max_area(height)
  left = 0
  right = height.length - 1
  max_area = 0

  while left < right
    width = right - left
    current_height = [height[left], height[right]].min
    current_area = width * current_height

    max_area = [max_area, current_area].max

    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end

  max_area
end
