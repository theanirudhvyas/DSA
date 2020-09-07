require_relative './node.rb'

def reorder (head)
  length = 0
  temp = head
  while temp != nil
    length += 1
    temp = temp.next
  end

  if length < 2
    return head
  end

  if length.even?
    main_tail = head
    (length/2-1).times {main_tail = main_tail.next}
  else
    main_tail = head
    (length/2).times {main_tail = main_tail.next}
  end

  reverse_head = main_tail.next
  main_tail.next = nil

  current_node = reverse_head

  while current_node.next != nil
    temp = current_node.next
    current_node.next = temp.next
    temp.next = reverse_head
    reverse_head = temp
  end

  merge_head = head

  while reverse_head != nil
    temp = reverse_head
    reverse_head = reverse_head.next
    temp.next = merge_head.next
    merge_head.next = temp
    merge_head = merge_head.next.next
  end


  return head
end


head = LList.new([1]).head

result = reorder(head)

while result != nil
  p result.data
  result = result.next
end




# https://www.interviewbit.com/problems/reorder-list/
