
def balanced_slit_possible?(array)
  array.sort!
  i = 0
  j = array.length - 1

  sum_min = 0
  sum_max = 0
  while i <= j
    if sum_min <= sum_max
      num = array[i]
        sum_min += num
        i += 1
        while array[i] == num
          sum_min += num
          i += 1
        end
    else
      num = array[j]
      sum_max += num
      j -= 1
      while array[j] == num
        sum_max += array[j]
        j -= 1
      end
    end
  end

  if sum_min == sum_max
    return true
  else
    return false
  end
end


input = [1,1,1,1,1,1,1,1,1,1,1,1]

p balanced_slit_possible?(input)
