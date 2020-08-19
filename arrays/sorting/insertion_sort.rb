
def sort(array)
  for i in 1..(array.length-1)
    value = array[i]
    j = i - 1
    while j >= 0 and array[j] > value
      array[j+1] = array[j]
      j -= 1
    end
    array[j+1] = value
  end
  return array
end

array = [61, 5, 7, 2, 9, 1, 79, 1524, 6, 2, 9, 0]

puts sort(array)
