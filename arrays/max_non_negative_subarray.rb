def maxset(a)
  max_sum = 0
  max_subarray = []

  curr_sum = 0
  curr_subarray = []

  a[a.length] = -1

  a.each_with_index do |num, i|
    if num.negative?
      if curr_sum > max_sum
        max_sum = curr_sum
        max_subarray = curr_subarray
      elsif curr_sum == max_sum
        max_subarray = curr_subarray if curr_subarray.length > max_subarray.length
      end
      curr_sum = 0
      curr_subarray = []
    else
      curr_sum += num
      curr_subarray << num
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
