
def next_greater(array)
  stack = []
  result = []
  (0..array.length - 1).each do |i|

    index = array.length - 1 - i
    next_greatest = -1
    while !stack.empty?
      if stack[-1] > array[index]
        next_greatest = stack[-1]
      else
        stack.pop
      end
    end

    stack << array[index]
    array[index] = next_greatest
  end
end


input = [4, 5, 2, 10]

p next_greater(input)
