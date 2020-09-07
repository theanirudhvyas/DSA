require_relative './node.rb'
def reverse_subset (head, start, fin)
  temp = Node.new('temp')
  temp.next = head
  new_head = temp
  head_node = new_head
  (start - 1).times {head_node = head_node.next}
  current_node = head_node.next

  (fin - start).times do
    temp = current_node.next
    current_node.next = temp.next
    temp.next = head_node.next
    head_node.next = temp
  end

  return new_head.next
end

head = LList.new([1, 2, 3]).head

result = reverse_subset(head, 2, 3)

while result != nil
  puts result.data
  result = result.next
end

# https://www.interviewbit.com/problems/reverse-link-list-ii/
