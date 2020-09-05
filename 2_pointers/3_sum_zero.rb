
def triplets(array)
  array.sort!
  result = []

  (0..array.length - 3).each do |k|
    i = k + 1
    j = array.length - 1
    while j > i
      curr_sum = array[i] + array[j] + array[k]
      if curr_sum > 0
        j -= 1
      elsif curr_sum < 0
        i += 1
      else
        result << [array[k], array[i], array[j]]
        i += 1
        j -= 1
      end
    end
  end

  result.uniq
end

input = [-1, 0, 1, 2, -1, -4]

puts triplets(input)

# https://www.interviewbit.com/problems/3-sum-zero/
