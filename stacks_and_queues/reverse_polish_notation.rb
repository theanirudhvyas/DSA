

def process (operation, stack)
  operations = ['+', '-', '/', '*']
  op_2 = stack.pop
  op_2 = process(op_2, stack) if operations.include? op_2

  op_1 = stack.pop
  op_1 = process(op_1, stack) if operations.include? op_1

  op_1 = op_1.to_i
  op_2 = op_2.to_i
  
  case operation
  when '+'
    return op_1 + op_2
  when '-'
    return op_1 - op_2
  when '/'
    return op_1 / op_2
  when '*'
    return op_1 * op_2
  end
end


def evaluate (array)
  stack = []
  array.each do |element|
    stack << element
  end

  return array[-1].to_i if array.length < 2
  process(stack.pop, stack)
end


input = ["2", "1", "+", "3", "*"]
input_2 = ["4", "13", "5", "/", "+"]
p evaluate(input)
