
def calculate_hamming_distance(num1, num2)
  xor = num1 ^ num2

  dist = 0
  while xor > 0
    dist += (xor & 1)
    xor = xor >> 1
  end
  return dist
end

def pairwise_distance(array)
  ham_dist = 0
  array.each_index do |i|
    array.each_index do |j|
      ham_dist += calculate_hamming_distance(array[i], array[j])
    end
  end

  return ham_dist % 1000000007
end

input1 = [1]
input2 = [2, 4, 6]

pp pairwise_distance(input1)
pp pairwise_distance(input2)
