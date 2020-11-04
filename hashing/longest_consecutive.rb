
def longest_consecutive(array)
  hash = {}
  max_length = 0
  array.each { |num| hash[num] = false }

  array.each do |num|
    next if hash[num]
    hash[num] = true
    curr_length = 1
    less = num - 1
    while hash[less] == false
      hash[less] = true
      curr_length += 1
      less -= 1
    end
    more = num + 1
    while hash[more] == false
      hash[more] = true
      curr_length += 1
      more += 1
    end

    max_length = [max_length, curr_length].max
  end

  max_length
end

input = [ 21, 114, 49, 74, 48, 107, 54, 66, 18, 93, 64, 50, 92, 39, 37, 70, -2, 117, 72, 40, 87, 35, 79, 52, 44, 4, 38, 84, 25, 113, 106, 32, 27, 57, 68, 45, 96, 36, 108, 17, 86, 2, 118, 9, 29, 100, 5, 13, 58, 101, 97, 105, 77, 78, 43, 20, 24, 94, 111, 53 ]

p longest_consecutive(input)
