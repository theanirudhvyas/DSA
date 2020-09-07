require_relative './node.rb'


def reverse_list (head)
  reversed_list = nil
  while head != nil
    temp = head
    head = head.next_node
    temp.next_node = reversed_list
    reversed_list = temp
    require 'pry'; binding.pry
  end
  return reversed_list
end


def is_palindrome? (head)
  length = 0
  temp = head
  while head != nil
    length += 1
    head = head.next_node
  end
  head = temp

  reversal_head = head
  reversed_list = nil
  if length.even?
    (length/2).times {reversal_head = reversal_head.next_node}
  else
    (length/2 + 1).times {reversal_head = reversal_head.next_node}
  end
  reversed_list = reverse_list(reversal_head)

  require 'pry'; binding.pry

  (length/2).times do
    return false if head.data != reversed_list.data
    head = head.next_node
    reversed_list = reversed_list.next_node
  end

  return true
end

node_1 = Node.new(3)
node_2 = Node.new(3, node_1)
node_3 = Node.new(1, node_2)
node_4 = Node.new(2, node_3)
node_5 = Node.new(3, node_4)


is_palindrome?(node_5)
