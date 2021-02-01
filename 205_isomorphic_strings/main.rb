# frozen_string_literal: true

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  memo_hash = {}
  s.chars.each_with_index do |c, i|
    if memo_hash.key?(c)
      return false if memo_hash[c] != t[i]
    else
      return false if memo_hash.value?(t[i])

      memo_hash[c] = t[i]
    end
  end
  true
end
