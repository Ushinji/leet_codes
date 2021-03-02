# frozen_string_literal: true

# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  hash = Hash.new(0)
  s.chars.each { |c| hash[c] += 1 }
  t.chars.each do |c|
    if hash[c] > 0
      hash[c] -= 1
    else
      return c
    end
  end
end
