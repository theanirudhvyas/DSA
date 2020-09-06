
def remove_duplicates(array)
  i = 0
  while i < array.length - 1
    if array[i+1] == array[i]
      array.delete_at(i+1)
    else
      i = i+1
    end
  end

  return array.length
end

# deleting an element from a particular position takes O(n) time, so I'll swap them and then delete everything at once
def remove_duplicates_v2(array)
  i = 0
  j = 1
  while i < j and j < array.length
    if array[j] == array[j-1]
      j += 1
    else
      temp = array[i]
      array[i] = array[j-1]
      array[j-1] = temp
      i += 1
      j += 1
    end
  end

  temp = array[i]
  array[i] = array[j-1]
  array[j-1] = array[i]
  i += 1

  array.pop(j-i)
  return array.length

end

input = [1,1,2, 2, 3, 3, 3, 3, 4, 5, 5, 6, 6 ,7, 8, 9, 9, 10]
input_2 = [0]

puts remove_duplicates_v2(input_2)
pp input_2

# https://www.interviewbit.com/problems/remove-duplicates-from-sorted-array/
