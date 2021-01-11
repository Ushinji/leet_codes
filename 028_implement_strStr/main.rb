# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  return 0 if needle.size.zero?

  needle_chars = needle.chars
  (0..(haystack.size - needle_chars.size)).each do |i|
    length = 0
    (0..needle_chars.size - 1).each do |j|
      break unless haystack[i + j] == needle_chars[j]

      length += 1
    end
    return i if length == needle_chars.size
  end
  -1
end
