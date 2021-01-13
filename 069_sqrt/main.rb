# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  left = 0
  right = x
  while left < right
    mid = left + (right - left) / 2
    num = mid**2
    return mid if x == num

    if x < num
      right = mid - 1
    else
      left = mid + 1
    end
  end
  left**2 <= x ? left : left - 1
end
