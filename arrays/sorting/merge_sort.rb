

def merge(array1, array2)
  i = 0
  j = 0
  res = []
  while i < array1.length and j < array2.length
    if array1[i] < array2[j]
      res << array1[i]
      i+=1
    else
      res << array2[j]
      j+=1
    end
  end

  if i != array1.length
    while i < array1.length
      res << array1[i]
      i+=1
    end
  else
    while j < array2.length
      res << array2[j]
      j+=1
    end
  end

  puts res
  res
end

def sort(array, start, fin)
  if start == fin
    return [array[start]]
  end
  middle = (fin + start) / 2
  merge(sort(array, start, middle), sort(array, middle+1, fin))
end


array = [2, 3 , 4 , 18, 1, 56, 0, -15, -3, 153, 1534, 0, 23, 99, 13]

 pp sort(array, 0, array.length-1)
