# frozen_string_literal: true

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return '' if strs.empty?

  prefix = strs[0]
  result = ''
  prefix.chars.each_with_index do |char, i|
    return result unless strs.all? { |str| str[i] == char }

    result += char
  end
  result
end
