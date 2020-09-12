
def sum(array)
  hash = {}
  ans = []

  (0..array.length - 1).each do |i|
    (i+1..array.length - 1).each do |j|

      sum = array[i] + array[j]
      if hash[sum]
        pi,pj = hash[sum]
        if pi < i and pj != i and pj != j
          ans = [pi, pj, i, j] if ans.empty? or pi < ans[0] or pj < ans[1]
          p ans
        end
      else
        hash[sum] = [i,j]
      end
    end
  end

  return ans
end

input = [9, 5, 4, 9, 3, 6, 8, 7, 1, 2, 8, 7, 2, 9, 7, 1, 3, 9, 7, 8, 1, 0, 5, 5]

p sum(input)


# https://www.interviewbit.com/problems/equal/
