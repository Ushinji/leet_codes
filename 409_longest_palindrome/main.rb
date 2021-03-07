# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  hash = Hash.new(0)
  s.chars.each { |c| hash[c] += 1 }

  length = 0
  hash.values.each do |count|
    length += count.even? ? count : count - 1
  end

  length < s.length ? length + 1 : length
end
