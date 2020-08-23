
def merge(arr1, arr2)

  i=0
  j=0
res = []
  while i < arr1.length and j < arr2.length
    if arr1[i] < arr2[j]
      res << arr1[i]
      i+=1
    else
      res << arr2[j]
      j+=1
    end
  end

  while i < arr1.length
    res << arr1[i]
    i+=1
  end

  while j < arr2.length
    res << arr2[j]
    j+=1
  end

  return res
end

def sorta(array, start, fin)

  return [array[start]] if start == fin

  mid = (start+fin)/2
  return merge(sorta(array, start, mid), sorta(array, mid+1, fin))
end


def noble_integer(a)
  sorted_array = sorta(a, 0, a.length-1)

  sorted_array.each_with_index do |num, index|
    require 'pry'; binding.pry
  if (a.length - 1 - index) == num and sorted_array[index] != (sorted_array[index+1] || -1)
    return 1
  end
  end
  return -1
end

input = [ -4, 7, 5, 3, 5, -4, 2, -1, -9, -8, -3, 0, 9, -7, -4, -10, -4, 2, 6, 1, -2, -3, -1, -8, 0, -8, -7, -3, 5, -1, -8, -8, 8, -1, -3, 3, 6, 1, -8, -1, 3, -9, 9, -6, 7, 8, -6, 5, 0, 3, -4, 1, -10, 6, 3, -8, 0, 6, -9, -5, -5, -6, -3, 6, -5, -4, -1, 3, 7, -6, 5, -8, -5, 4, -3, 4, -6, -7, 0, -3, -2, 6, 8, -2, -6, -7, 1, 4, 9, 2, -10, 6, -2, 9, 2, -4, -4, 4, 9, 5, 0, 4, 8, -3, -9, 7, -8, 7, 2, 2, 6, -9, -10, -4, -9, -5, -1, -6, 9, -10, -1, 1, 7, 7, 1, -9, 5, -1, -3, -3, 6, 7, 3, -4, -5, -4, -7, 9, -6, -2, 1, 2, -1, -7, 9, 0, -2, -2, 5, -10, -1, 6, -7, 8, -5, -4, 1, -9, 5, 9, -2, -6, -2, -9, 0, 3, -10, 4, -6, -6, 4, -3, 6, -7, 1, -3, -5, 9, 6, 2, 1, 7, -2, 5 ]

input2 = [ -4, -2, 0, -1, -6 ]
pp noble_integer(input2)
