# frozen_string_literal: true

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  i = 0
  s.chars.each do |c|
    i = t.index(c, i)
    return false if i.nil?

    i += 1
  end
  !i.nil?
end
