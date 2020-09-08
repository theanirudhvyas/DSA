

def nearest_smaller (array)
  top = 0

  result = []
  array.each_index do |i|
    while top >= 0 and array[top] >= array[i]
      top -= 1
    end
    result << ((top >= 0) ? array[top] : -1)
    top = i
  end

  return result
end


def nearest_smaller_v2(array)
  stack = []
  result = [-1]
  (1..(array.length - 1)).each do |i|
    if array[i-1] < array[i]
      stack << array[i-1]
      result << array[i-1]
    else
      target = nil
      while !stack.empty?
        break if stack[-1] < array[i]
        stack.pop
      end
      if stack.empty?
        result << -1
      else
        result << stack[-1]
      end
    end
  end

  result
end

input = [1, 2, 4, 8, 10, 2]

p nearest_smaller_v2(input)


# https://www.interviewbit.com/problems/nearest-smaller-element/
