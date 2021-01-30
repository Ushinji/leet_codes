# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def title_to_number(s)
  s.chars.each.with_index(1).reduce(0) do |acc, (c, i)|
    acc += (c.ord - 'A'.ord + 1) * 26**(s.size - i)
  end
end
