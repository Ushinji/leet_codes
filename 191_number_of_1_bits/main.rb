# frozen_string_literal: true

# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  result = 0
  until n.zero?
    result += 1 unless (n & 1).zero?
    n = n >> 1
  end
  result
end
