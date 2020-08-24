
def rearrange_array(array)
  len = array.length
  (0..len-1).each do |i|
    array[i] += (array[array[i]]%len)*len
  end

  return array.map { |num| num/len }
end

input = [4, 2, 0, 1, 3]

pp rearrange_array(input)

# Problem: https://www.interviewbit.com/problems/rearrange-array/
