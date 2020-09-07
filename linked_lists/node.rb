
class Node
  attr_accessor :data, :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

node_1 = Node.new(1)
node_2 = Node.new(2, node_1)
node_3 = Node.new(3, node_2)
node_4 = Node.new(4, node_3)
node_5 = Node.new(5, node_4)
node_6 = Node.new(6, node_5)
@test_head = node_6

