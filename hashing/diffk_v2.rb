
def diffk(array, target)
  hash = {}

  array.each_with_index do |num, i|
    if hash[num - target] or hash[target + num]
      return 1 if i != hash[num-target] and i != hash[target + num]
    else
      hash[num] = i
    end
  end
  return 0
end

input =[ 34, 63, 64, 38, 65, 83, 50, 44, 18, 34, 71, 80, 22, 28, 20, 96, 33, 70, 0, 25, 64, 96, 18, 2, 53, 100, 24, 47, 98, 69, 60, 55, 8, 38, 72, 94, 18, 68, 0, 53, 18, 30, 86, 55, 13, 93, 15, 43, 73, 68, 29 ]
target = 97

p diffk(input, target)



# https://www.interviewbit.com/problems/diffk-ii/
