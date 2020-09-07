require_relative './node.rb'

def reverse(head)

  temp = head
  head = head.next_node
  temp.next_node = nil
  reversed_list = temp

  while head != nil
    temp = head
    head = head.next_node
    temp.next_node = reversed_list
    reversed_list = temp
  end

  return reversed_list
end


node_1 = Node.new(1)
node_2 = Node.new(2, node_1)
node_3 = Node.new(3, node_2)
node_4 = Node.new(4, node_3)
node_5 = Node.new(5, node_4)
node_6 = Node.new(6, node_5)
head = node_6

reverse(head)
