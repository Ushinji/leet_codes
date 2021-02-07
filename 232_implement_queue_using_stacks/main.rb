# frozen_string_literal: true

class MyQueue
  # Initialize your data structure here.
  def initialize
    @list = []
  end

  # Push element x to the back of queue.
  # :type x: Integer
  # :rtype: Void
  def push(x)
    @list.push(x)
  end

  # Removes the element from in front of queue and returns that element.
  # :rtype: Integer
  def pop
    @list.shift
  end

  # Get the front element.
  # :rtype: Integer
  def peek
    @list.first
  end

  # Returns whether the queue is empty.
  # :rtype: Boolean
  def empty
    @list.empty?
  end
end
