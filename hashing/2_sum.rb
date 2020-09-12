
def sum_pair(array, target)

  hash = {}
  array.each_with_index do |num, index|
    if hash[target - num]
      return [hash[target-num] + 1, index + 1]
    elsif hash[num].nil?    # since we want to return min index1, we don't override the hash key values i.e. set it to the first value found
      hash[num] = index
    end
  end
  return []
end

input = [2, 7, 11, 15]

p sum_pair(input, 9)

# https://www.interviewbit.com/problems/2-sum/
