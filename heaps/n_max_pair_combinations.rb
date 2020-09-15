require_relative './max_heap.rb'

def max_pairs(a, b)
  return [a[0] + b[0]] if a.length == 1
  return [] if a.empty?

  length = a.length
  heap_a = Heap.new(a)
  heap_b = Heap.new(b)

  result = []


  (a.length/2).times do
    require 'pry'; binding.pry
    max_a = heap_a.delete_max
    max_b = heap_b.delete_max
    result << (max_a + max_b)
    sum1 = max_a + heap_b.get_max
    sum2 = max_b + heap_a.get_max
    result << [sum1,sum2].max
    result << [sum1,sum2].min
  end

  result[0..length-1]
end


input_a = [ 3, 2, 4, 2 ]
input_b = [ 4, 3, 1, 2 ]

p max_pairs(input_a, input_b)
