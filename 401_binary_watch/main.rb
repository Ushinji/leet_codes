# frozen_string_literal: true

# @param {Integer} num
# @return {String[]}
def read_binary_watch(num)
  result = []
  i = 0
  j = 0
  (0..11).each do |i|
    (0..59).each do |j|
      next unless i.to_s(2).count('1') + j.to_s(2).count('1') == num

      hour = i.to_s(10)
      min = j.to_s(10).rjust(2, '0')
      result.push("#{hour}:#{min}")
    end
  end
  result
end
