# frozen_string_literal: true

# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  return false if n.negative?

  bit_str = n.to_s(2)
  bit_str[0] == '1' && bit_str.slice(1..-1).to_i.zero?
end
