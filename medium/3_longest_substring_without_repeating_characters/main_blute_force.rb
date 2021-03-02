# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  return 0 if s.empty?

  result = 0
  hash = Hash.new(0)
  i = 0
  while i < s.size
    if hash.key?(s[i])
      result = [result, hash.keys.size].max
      i -= hash.keys.size - 1
      hash = Hash.new(0)
    end
    hash[s[i]] = 1
    i += 1
  end

  [result, hash.keys.size].max
end
