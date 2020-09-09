require_relative './node.rb'

def substract(head)
  length = 0
  temp = head
  while temp != nil
    length += 1
    temp = temp.next
  end

  return head if length < 2

  main_end = head
  if length.even?
    (length/2 - 1).times {main_end = main_end.next}
  else
    (length/2).times {main_end = main_end.next}
  end

  reverse_head = reverse_list(main_end.next)

  i = head
  j = reverse_head

  while i != nil and j != nil
    i.data = j.data - i.data
    i = i.next
    j = j.next
  end

  main_end.next = reverse_list(reverse_head)

  return head
end

def reverse_list(head)
  reversed_list = head

  while head.next != nil
    temp = head.next
    head.next = temp.next
    temp.next = reversed_list
    reversed_list = temp
  end

  return reversed_list
end


head = LList.new([1, 2]).head

result = substract(head)

while result != nil
  p result.data
  result = result.next
end




# https://www.interviewbit.com/problems/subtract/
