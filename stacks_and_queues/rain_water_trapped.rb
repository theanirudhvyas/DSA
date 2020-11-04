
def water_trapped (array)
  stack = []
  water = 0
  (1..array.length - 1).each do |i|

    if stack.empty?
      if array[i] < array[i-1]
        require 'pry'; binding.pry
        stack << (i-1)
      end
    else
      if array[i] >= array[stack[-1]]
        require 'pry'; binding.pry
        height = array[stack[-1]]
        (stack[-1]..i-1).each do |j|
          water += (height - array[j])
        end
        stack.pop
        stack.push(i)
        require 'pry'; binding.pry
      end
    end
  end
  return water
end

input = [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]

p water_trapped(input)
