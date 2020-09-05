
def merge(array_1, array_2)
  i, j = [0,0]
  result = []
  while i < array_1.length and j < array_2.length
    if array_1[i] <= array_2[j]
      result << array_1[i]
      i += 1
    else
      result << array_2[j]
      j += 1
    end
  end

  while i < array_1.length
    result << array_1[i]
    i += 1
  end
  while j < array_2.length
    result << array_2[j]
    j += 1
  end

  result
end
