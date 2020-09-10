
def calculate_subsets(array, current, result, start_index)
  result << current.dup

  (start_index..(array.length - 1)).each do |i|
    current << array[i]
    calculate_subsets(array, current, result, i+1)
    current.pop
  end
end

def subsets(array)
  array.sort!
  result = []
  current = []

  calculate_subsets(array, current, result, 0)

  result
end


input = [1, 1, 2, 3]

pp calculate_subsets(input)


# https://www.interviewbit.com/problems/subset/
