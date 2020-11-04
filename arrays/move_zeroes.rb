
def move_zeroes(array)
  i = 0
  j = array.length - 1
  while array[j] == 0
    j -= 1
  end

  while i <= j
    if array[i] == 0
      (i..j-1).each do |k|
        array[k] = array[k+1]
      end
      array[j] = 0
      j -= 1
    end
    i += 1
  end
end


def move_zeroes_v2(array)
  slow_pointer = -1
  array.each_with_index do |num, i|
    if num != 0
      if i == slow_pointer or i - slow_pointer == 1
        slow_pointer += 1
      else
        array[slow_pointer + 1] = num
        array[i] = 0
        slow_pointer += 1
      end
    end
  end
end


input = [0,1,0,3,12]

move_zeroes_v2(input)
p  input
# https://leetcode.com/problems/move-zeroes/
