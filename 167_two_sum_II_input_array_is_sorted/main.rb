# frozen_string_literal: true

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  dict = {}
  numbers.each.with_index(1) do |num, i|
    return [dict[num], i] if dict.key?(num)

    dict[target - num] = i
  end
end
