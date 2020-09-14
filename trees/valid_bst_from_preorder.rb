
def valid_bst?(array)
  return true if array.length < 2
  root = array[0]
  right_root = 0
  (1..array.length - 1).each do |i|
    if array[i] > root
      right_root = i
      break
    end
  end

  return true if right_root == 0

  i = right_root
  (i..array.length - 1).each do |j|
    if array[j] < root
      return false
    end
  end

  return (valid_bst?(array[1..right_root - 1]) and valid_bst?(array[right_root..-1]))
end


input = [7, 7, 10, 10, 9, 5, 2, 8]
input_2 = [ 315, 279, 263, 205, 187, 184, 70, 68, 141, 100, 176, 185, 193, 309, 839, 749, 491, 384, 364, 416, 392, 386, 418, 417, 457, 433, 655, 645, 596, 584, 524, 630, 748, 667, 658, 692, 735, 732, 805, 787, 773, 763, 763, 796, 897, 896, 859, 863, 886, 960, 948, 943, 969, 996, 989 ]
p valid_bst?(input_2)


# https://www.interviewbit.com/problems/valid-bst-from-preorder/
