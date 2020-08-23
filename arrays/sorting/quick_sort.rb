def partition(array, start, fin)
  p_index = start
  (start..(fin-1)).each do |i|
    if array[i] <= array[fin]
      temp = array[p_index]
      array[p_index] = array[i]
      array[i] = temp
      p_index += 1
    end
  end

  temp = array[p_index]
  array[p_index] = array[fin]
  array[fin] = temp

  return p_index
end


def quick_sort(array, start, fin)
  if start <= fin
    pivot_index = partition(array, start, fin)
    quick_sort(array, start, pivot_index-1)
    quick_sort(array, pivot_index+1, fin)
  end
  return array
end

input = [1, 0, 1, 5, 8, 7, 3, 4, 7, 2, 5]

pp quick_sort(input, 0, 10)
