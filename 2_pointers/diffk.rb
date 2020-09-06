
def diffk(array, target)

  i, j = 0, 1
  while i < j and j < array.length

    if array[j] - array[i] == target.abs
      return 1
    elsif array[j] - array[i] > target
      i += 1
      j = i + 1
    else
      j += 1
    end

  end
  return 0
end

input_array = [ 1, 2, 2, 3, 4 ]
input_target = 0

input_2 = [1,5]
target = 4

puts diffk(input_2, target)

# https://www.interviewbit.com/problems/diffk/
