# frozen_string_literal: true

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.size != t.size

  hash = Hash.new(0)
  s.chars.each { |c| hash[c] += 1 }
  t.chars.each do |c|
    return false if !hash.key?(c) || hash[c].zero?

    hash[c] -= 1
  end
  true
end
