# frozen_string_literal: true

# @param {String} s
# @return {String}
def reverse_vowels(s)
  left = 0
  right = s.size - 1
  vowels = %w[a i u e o]

  while left < right
    while !vowels.include?(s[left].downcase) && left < right
      left += 1
    end

    while !vowels.include?(s[right].downcase) && left < right
      right -= 1
    end

    break if right <= left

    s[left], s[right] = s[right], s[left]
    left += 1
    right -= 1
  end

  s
end
