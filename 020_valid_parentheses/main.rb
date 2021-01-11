# @param {String} s
# @return {Boolean}

def is_valid(s)
  parentheses = { '(' => ')', '{' => '}', '[' => ']' }
  stash = []
  s.chars.each do |c|
    if parentheses.keys.include?(c)
      stash << c
    else
      return false unless c == parentheses[stash.pop]
    end
  end
  stash.empty?
end
