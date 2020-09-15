require_relative './node.rb'


def reverse_nodes(head, fin)
  curr = head
  while curr.next != fin
    temp = curr.next
    curr.next = temp.next
    temp.next = head
    head = temp
  end
  return head
end

def reverse_operations(head)
  start = Node.new(-1)
  start.next = head
  result = start
  fin = head

  while start != nil
    if fin.nil?
      if start.next != fin
        start.next = reverse_nodes(start.next, fin)
      end
      start = fin

    elsif fin.data.odd?
      if start.next != fin
        start.next = reverse_nodes(start.next, fin)
      end
      start = fin
      fin = fin.next

    elsif fin.data.even?
      fin = fin.next
    end
  end

  result.next
end

list = LList.new([2, 18, 24, 3, 5, 7, 9, 6, 12])

res = reverse_operations(list.head)

while res != nil
  p res.data
  res = res.next
end
