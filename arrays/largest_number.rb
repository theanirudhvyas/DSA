def digits(number)
  q = number/10
  r = number%10
  if q == 0
    [r]
  else
    [digits(q), r].flatten
  end
end

def greater_than(num1, num2)
  num1_digits = digits(num1)
  num2_digits = digits(num2)

  i = 0
  j = 0
  loop do
    return true if num1_digits[i] > num2_digits[j]
    return false if num2_digits[j] > num1_digits[i]
    if num2_digits[j] == num1_digits[i]
      return true if num2_digits[j+1].nil? and num1_digits[i+1].nil?
      i = (i + 1)%num1_digits.length
      j = (j + 1)%num2_digits.length
    end
  end
end

def merge(array1, array2)

  result = []
  i = 0
  j = 0

  while i < array1.length and j < array2.length
    if greater_than(array1[i], array2[j])
      result << array1[i]
      i+=1
    else
      result << array2[j]
      j+=1
    end
  end

  while i < array1.length
    result << array1[i]
    i+=1
  end

  while j < array2.length
    result << array2[j]
    j+=1
  end

  return result

end

def merge_sort(array, start, fin)

  if start == fin
    return [array[start]]
  end

  mid = (start + fin)/2

  sorted_array =  merge(merge_sort(array, start, mid), merge_sort(array, mid + 1, fin))
end

def largest_number(array)
  zero_array = []
  array.length.times {zero_array << 0}
  return "0" if zero_array == array
  return merge_sort(array, 0, array.length-1).join
end


inp = [ 782, 240, 409, 678, 940, 502, 113, 686, 6, 825, 366, 686, 877, 357, 261, 772, 798, 29, 337, 646, 868, 974, 675, 271, 791, 124, 363, 298, 470, 991, 709, 533, 872, 780, 735, 19, 930, 895, 799, 395, 905 ]


puts largest_number(inp)

