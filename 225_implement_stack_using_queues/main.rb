# frozen_string_literal: true

class MyStack
  # Initialize your data structure here.
  def initialize
    @list = []
  end

  # Push element x onto stack.
  # :type x: Integer
  # :rtype: Void
  def push(x)
    @list.push(x)
  end

  # Removes the element on top of the stack and returns that element.
  # :rtype: Integer
  def pop
    @list.pop
  end

  # Get the top element.
  # :rtype: Integer
  def top
    @list.last
  end

  # Returns whether the stack is empty.
  # :rtype: Boolean
  def empty
    @list.empty?
  end
end
