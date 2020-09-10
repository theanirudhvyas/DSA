
def combination(array, curr, result, target, start_index)
  difference = target - curr.sum

  printf("curr: %s   difference: %d \n", curr.to_s, difference)

  if difference.zero?
    result << curr.dup
    return
  elsif difference < 0
    return
  else
    (start_index..(array.length - 1)).each do |i|
      curr << array[i]
      combination(array, curr, result, target, i)
      curr.pop
    end
  end
end

def combination_sum (array, target)
  array.sort!
  array.uniq!
  result = []
  current = []

  combination(array, current, result, target, 0)

  return result
end

input = [ 8, 10, 6, 11, 1, 16, 8 ]

puts "result: " + combination_sum(input, 28).to_s

expected_result = [[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6 ] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8 ] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10 ] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 11 ] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6 6 ] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6 8 ] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6 10 ] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8 8 ] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 16 ] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6 11 ] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6 6 6 ] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 8 10 ] [1, 1, 1, 1, 1, 1, 1, 1, 1, 8 11, ] [1, 1, 1, 1, 1, 1, 1, 1, 6 6 8 ] [1, 1, 1, 1, 1 1 1 1 10 10 ] [1 1 1 1 1 1 1 10 11 ] [1 1 1 1 1 1 6 6 10 ] [1 1 1 1 1 1 6 8 8 ] [1 1 1 1 1 1 6 16 ] [1 1 1 1 1 1 11 11 ] [1 1 1 1 1 6 6 11 ] [1 1 1 1 6 6 6 6 ] [1 1 1 1 6 8 10 ] [1 1 1 1 8 8 8 ] [1 1 1 1 8 16 ] [1 1 1 6 8 11 ] [1 1 6 6 6 8 ] [1 1 6 10 10 ] [1 1 8 8 10 ] [1 1 10 16 ] [1 6 10 11 ] [1 8 8 11 ] [1 11 16 ] [6 6 6 10 ] [6 6 8 8 ] [6 6 16 ] [6 11 11 ] [8 10 10 ]]

require 'pry'; binding.pry
# https://www.interviewbit.com/problems/combination-sum/
