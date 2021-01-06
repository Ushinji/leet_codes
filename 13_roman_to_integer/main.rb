# @param {String} s
# @return {Integer}

ROMAN_DICT = {
  "I" => 1,
  "V" => 5,
  "X" => 10,
  "L" => 50,
  "C" => 100,
  "D" => 500,
  "M" => 1000
}

def roman_to_int(s)
  result = 0
  (0..(s.size - 1)).each do |i|
    if i == s.size - 1
      signed = 1
    else
      signed = ROMAN_DICT[s[i]] >= ROMAN_DICT[s[i+1]] ? 1 : -1
    end
    result += signed * ROMAN_DICT[s[i]]
  end
  result
end
