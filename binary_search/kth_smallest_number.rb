
def kth_smallest(array, k)
  min = array.min
  max = array.max

  while min <= max
    mid = (min + max)/2
    less_than_mid = 0
    greater_than_mid = 0
    equal_to_mid = 0

    array.each do |num|
      less_than_mid += 1 if num < mid
      greater_than_mid += 1 if num > mid
      equal_to_mid += 1 if num == mid
    end

    if less_than_mid < k
      if less_than_mid + equal_to_mid >= k
        return mid
      end
      min = mid + 1
    else
      max = mid - 1
    end

  end
end

input = [3,4,2,2,1,1,1,5,6,9,9,1,12, 24, 2, 4]
k = 8
pp kth_smallest(input, k)
