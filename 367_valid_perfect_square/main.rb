# frozen_string_literal: true

# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
  left = 0
  right = num

  while left <= right
    mid = left + (right - left) / 2
    square = mid**2
    if square < num
      left = mid + 1
    elsif num < square
      right = mid - 1
    else
      return true
    end
  end
  false
end
