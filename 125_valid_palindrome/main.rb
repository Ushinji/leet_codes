# frozen_string_literal: true

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.downcase.gsub(/[^0-9a-z]/, '')
  i = 0
  j = s.size - 1
  while i < j
    return false if s[i] != s[j]

    i += 1
    j -= 1
  end
  true
end
