
def closest_sum(array, target)
  array = array.sort


  sum = array[0] + array[1] + array[2]
  (0..array.length-1).each do |z|
    i = 0
    j = array.length - 1
    while j > i and i < array.length and j > 0
      if i != z and j != z
        require 'pry'; binding.pry
        curr_sum = array[i] + array[j] + array[z]
        sum = curr_sum if (target - curr_sum).abs < (target - sum).abs
        if curr_sum > target
          j -= 1
        elsif
          curr_sum < target
          i += 1
        else
          break
        end
      else
        i += 1 if i == z
        j -= 1 if j == z
      end
    end
    break if sum == target
  end

  sum
end

input = [-1, 2, 1, -4]
target = 1

input_2 = [-10, -10, -10]
target_2 = -5

puts closest_sum(input_2, target_2)

# https://www.interviewbit.com/problems/3-sum/
