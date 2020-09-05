
def intersect(array_1, array_2)
  i,j = 0,0
  result = []

  while i < array_1.length and j < array_2.length
    if array_1[i] < array_2[j]
      i += 1
    elsif array_1[i] == array_2[j]
      result << array_1[i]
      i += 1
      j += 1
    else
      j += 1
    end
  end

  result
end

input_1 = [1, 2, 3, 3, 4, 5, 6]
input_2 = [3, 3, 5]

puts intersect(input_1, input_2)

# https://www.interviewbit.com/problems/intersection-of-sorted-arrays/
