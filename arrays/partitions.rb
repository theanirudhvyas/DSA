
def solve(a, b)
  
  total_sum = b.reduce(:+)

  return 0 unless total_sum%3 == 0

  temp_sum = 0
  prefix_list = b.map { |num| temp_sum+=num }

  suffix_list = [total_sum]
  index = 0
  while index < a-1
    suffix_list << total_sum - prefix_list[index]
    index += 1
  end

  
  count = 0
  i = 0
  while i < a
    if prefix_list[i] == total_sum/3
      j = i+2
      while j < a
        if suffix_list[j] == total_sum/3
          count += 1
        end
        j+=1
      end
    end
    i+=1
  end

  return count
end


### v2

def solve_v2(a, b)
  total_sum = b.reduce(:+)

  return 0 unless total_sum % 3 == 0

  target = total_sum/3
  sum = 0
  count = 0
  result = 0

  b.each do |num|
    sum += num
    if sum == target*2
      result += count
    end
    if sum == target
      count += 1
    end
  end
  return result
end

input_arr1 = [1, 2, 3, 0, 3]
input_len1 = input_arr1.length

input_arr2 = [0, 1, -1, 0]
input_len2 = input_arr2.length


#pp solve_v2(input_len1, input_arr1)
pp solve_v2(input_len2, input_arr2)
