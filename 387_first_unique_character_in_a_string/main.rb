# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  hash = Hash.new(0)
  s.chars.each { |c| hash[c] += 1 }

  (0..(s.size - 1)).each do |i|
    return i if hash[s[i]] == 1
  end
  -1
end
