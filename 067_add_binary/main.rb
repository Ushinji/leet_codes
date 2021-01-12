# @param {String} a
# @param {String} b
# @return {String}

def bitstr2dec(bit_str)
  result = 0
  size = bit_str.size
  bit_str.chars.each_with_index do |b, i|
    result += b.to_i * 2.pow(size - i - 1)
  end
  result
end

def dec2bitstr(dec)
  return '0' if dec.zero?

  result = ''
  num = dec
  while num != 0
    bit = num.odd? ? '1' : '0'
    result += bit
    num /= 2
  end
  result.reverse!
end

def add_binary(a, b)
  sum = bitstr2dec(a) + bitstr2dec(b)
  dec2bitstr(sum)
end
