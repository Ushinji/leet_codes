# frozen_string_literal: true

# @param {Integer[]} g
# @param {Integer[]} s
# @return {Integer}
def find_content_children(g, s)
  g.sort!
  s.sort!
  i = 0
  j = 0
  while i < g.size && j < s.size
    i += 1 if g[i] <= s[j]
    j += 1
  end
  i
end
