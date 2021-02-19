# frozen_string_literal: true

class NumArray
  # :type nums: Integer[]
  def initialize(nums)
    @sums = Array.new(nums.size, 0)
    (0..(nums.size - 1)).each do |i|
      @sums[i + 1] = @sums[i] + nums[i]
    end
  end

  # :type i: Integer
  # :type j: Integer
  # :rtype: Integer
  def sum_range(i, j)
    @sums[j + 1] - @sums[i]
  end
end

# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# param_1 = obj.sum_range(i, j)
