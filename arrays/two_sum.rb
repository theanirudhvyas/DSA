# https://leetcode.com/problems/two-sum/

def two_sum(input, target)
  hash = {}

  input.each_with_index do |num, i|
    if hash[target - num]
      return [hash[target-num], i]
    else
      hash[num] = i
    end
  end
end

input = [3,2,4]
target = 6

puts two_sum(input, target)
