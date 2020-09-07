require_relative './node.rb'
def add_lists(head_1, head_2)
  remainder = 0
  start_node = Node.new('start')
  result = start_node
  while head_1 != nil and head_2 != nil
    sum_initial = (head_1.data + head_2.data + remainder)
    sum = sum_initial % 10
    remainder = sum_initial / 10

    new_node = Node.new(sum)
    result.next = new_node
    result = result.next
    head_1 = head_1.next
    head_2 = head_2.next
  end

  while head_1 != nil
    sum_initial = (head_1.data + remainder)
    sum = sum_initial % 10
    remainder = sum_initial / 10

    new_node = Node.new(sum)
    result.next = new_node
    result = result.next
    head_1 = head_1.next
  end

  while head_2 != nil
    sum_initial = (head_2.data + remainder)
    sum = sum_initial % 10
    remainder = sum_initial / 10

    new_node = Node.new(sum)
    result.next = new_node
    result = result.next
    head_2 = head_2.next
  end

  if remainder > 0
    result.next = Node.new(remainder)
  end

  return start_node.next
end

list_1 = LList.new([2,4,3])
list_2 = LList.new([5,6,4, 4, 5  ])


result = add_lists(list_1.head, list_2.head)

while result != nil
  p result.data
  result = result.next
end

# https://www.interviewbit.com/problems/add-two-numbers-as-lists/
