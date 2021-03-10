# frozen_string_literal: true

# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
  n1 = 0
  num1.codepoints.each do |num|
    n1 = n1 * 10 + (num - 48)
  end

  n2 = 0
  num2.codepoints.each do |num|
    n2 = n2 * 10 + (num - 48)
  end

  (n1 + n2).to_s
end
