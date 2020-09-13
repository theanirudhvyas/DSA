
class BSTIterator
  attr_accessor :path_stack, :root

  def initialize(root)
    @path_stack = []
    fill_least_node(root)
    @root = root
    @curr_least = nil
  end

  def fill_least_node(root)
    temp = root
    while temp != nil
      @path_stack << temp
      temp = temp.left
    end
  end

  def next
    least_node = @path_stack.pop
    if least_node.right?
      fill_least_node(least_node.right)
    end
    return least_node.data
  end

  def has_next?
    return @path_stack.any?
  end

end
