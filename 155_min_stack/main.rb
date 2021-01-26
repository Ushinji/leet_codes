# frozen_string_literal: true

class MinStack
  # initialize your data structure here.
  def initialize
    @stack = []
  end

  # :type x: Integer
  # :rtype: Void
  def push(x)
    min = get_min
    min = x if min.nil? || (x < min)
    @stack.push([x, min])
  end

  # :rtype: Void
  def pop
    @stack.pop
  end

  # :rtype: Integer
  def top
    return nil if @stack.empty?

    @stack.last[0]
  end

  # :rtype: Integer
  def get_min
    return nil if @stack.empty?

    @stack.last[1]
  end
end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
