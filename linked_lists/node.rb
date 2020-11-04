
class Node
  attr_accessor :data, :next

  def initialize(data, next_node = nil)
    @data = data
    @next = next_node
  end
end

class LList
  attr_reader :head

  def initialize(array)
    @head = Node.new(array[0])
    temp = @head
    array[1..array.length].each do |num|
      temp.next = Node.new(num)
      temp = temp.next
    end
  end
end

node_1 = Node.new(1)
node_2 = Node.new(2, node_1)
node_3 = Node.new(3, node_2)
node_4 = Node.new(4, node_3)
node_5 = Node.new(5, node_4)
node_6 = Node.new(6, node_5)
@test_head = node_6

