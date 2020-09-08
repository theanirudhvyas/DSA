
class MinStack
  @stack = nil
  @min_stack = nil

  def initialize()
    @stack = []
    @min_stack = []
  end

  def push(num)
    @stack << num
    if @min_stack.empty?
      @min_stack << num
    else
      if num <= @min_stack[-1]
        @min_stack << num
      end
    end
  end

  def pop()
    num = @stack.pop
    if num == @min_stack[-1]
      @min_stack.pop
    end
    return num
  end

  def top
    @stack[-1]
  end

  def get_min
    @min_stack[-1]
  end
end

