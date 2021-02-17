# frozen_string_literal: true

# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  hash = {}
  s_list = s.split(' ')

  return false if pattern.size != s_list.size

  pattern.chars.each_with_index do |pattern_char, i|
    unless hash.key?(pattern_char)
      return false if hash.values.include?(s_list[i])

      hash[pattern_char] = s_list[i]
      next
    end

    next if hash[pattern_char] == s_list[i]

    return false
  end

  true
end
