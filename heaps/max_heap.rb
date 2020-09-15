
class Heap
  attr_accessor :heap

  def initialize(array)
    @heap = array
    construct_heap
  end

  def leaf_node?(index)
    return index >= @heap.length/2
  end

  def satisfied?(index)
    left_index = index*2 + 1
    right_index = index*2 + 2

    if right_index > @heap.length - 1
      return @heap[index] >= @heap[left_index]
    else
      return (@heap[index] >= @heap[left_index] and @heap[index] >= @heap[right_index])
    end
  end

  def fix_one_error(index)
    return if leaf_node?(index) or satisfied?(index)

    left_index = index*2 + 1
    right_index = index*2 + 2

    if right_index > @heap.length - 1
      candidate_index = left_index
    elsif
      candidate_index = (@heap[left_index] > @heap[right_index]) ? left_index : right_index
    end

    @heap[index], @heap[candidate_index] = @heap[candidate_index], @heap[index]

    fix_one_error(candidate_index)
  end

  def construct_heap
    (0..@heap.size/2-1).to_a.reverse.each do |index|
      fix_one_error(index)
    end
  end

  def get_max
    @heap[0]
  end

  def delete_max
    @heap[0], @heap[-1] = @heap[-1], @heap[0]

    max = @heap.pop

    fix_one_error(0)
    max
  end

  def insert(num)
    @heap.prepend(num)
    fix_one_error(num)
  end
end

