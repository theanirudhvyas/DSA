
def count_subarrays(array)
  left = []

  right = []

  (0..array.length - 1).each do |i|
    last_greater_index = -1
    (0..i-1).each do |j|
      if array[j] > array[i]
        last_greater_index = j
      end
    end
    left[i] = (last_greater_index == -1 ? 0 : last_greater_index)
  end

  (0..array.length - 1).to_a.reverse.each do |i|
    last_greater_index = -1
    ((i + 1)..array.length-1).to_a.reverse.each do |j|
      if array[j] > array[i]
        last_greater_index = j
      end
    end
    right[i] = (last_greater_index == -1 ? array.length : last_greater_index)
  end

  result = []
  array.each_index do |i|
    result[i] = (i - left[i]) + (right[i] - i) 
  end

  require 'pry'; binding.pry

  result
end

input = [3, 4, 1, 6, 2]

pp count_subarrays(input)
