# frozen_string_literal: true

require 'prime'
# @param {Integer} n
# @return {Integer}
def count_primes(n)
  # n以下の素数を計算
  Prime.take_while { |p| p < n }.size
end
