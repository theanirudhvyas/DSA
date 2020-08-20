def maxset(a)
  max_sum = 0
  max_sub_start = 0
  max_subarray = []

  curr_sum = 0
  curr_start = 0
  curr_subarray = []

  a.each_with_index do |num, i|
    if num.negative?
      if curr_sum > max_sum
        max_sum = curr_sum
        max_sub_start = curr_start
        max_subarray = curr_subarray
      elsif curr_sum == max_sum
        if curr_subarray.length > max_subarray.length
          max_subarray = curr_subarray
          max_sub_start = curr_start
        end
      end
      curr_sum = 0
      curr_start = i+1
      curr_subarray = []
    else
      curr_sum += num
      curr_subarray << num
    end
  end

  if curr_sum > max_sum
    max_sum = curr_sum
    max_sub_start = curr_start
    max_subarray = curr_subarray
  elsif curr_sum == max_sum
    if curr_subarray.length > max_subarray.length
      max_subarray = curr_subarray
      max_sub_start = curr_start
    end
  end

  return max_subarray
end


arr1 = [1, 2, 5, -7, 2, 3]
arr2 = [10, -1, 2, 3, -4, 100]
arr3 = [ 0, 0, -1, 0 ]

pp maxset(arr1)
pp maxset(arr2)
pp maxset(arr3)
