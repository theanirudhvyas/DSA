

def largest_subarray(array)

  max_length = 0
  max_end_index = 0
  max_start_index = 0
  hash = {}
  hash[0] = 0
  sum = 0

  array.each_with_index do |num, index|
    sum += num
    if hash[sum]
      length = index - hash[sum] + 1
      if length > max_length
        max_length = length
        max_start_index = hash[sum]
        max_end_index = index
      end
    elsif hash[sum].nil?
      hash[sum] = index+1
    end
  end

  require 'pry'; binding.pry
  return array[max_start_index..max_end_index] if max_length > 0
end


p largest_subarray([0,1,3,4])

# https://www.interviewbit.com/problems/largest-continuous-sequence-zero-sum/
