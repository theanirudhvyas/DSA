
require 'set'

def count_distinct_triangles(array)
  sorted_array = array.map { |dimensions| dimensions.sort }
  set = Set.new(sorted_array)

  set.size
end


input = [[[2, 2, 3], [3, 2, 2], [2, 5, 6]],
         [[8, 4, 6], [100, 101, 102], [84, 93, 173]],
         [[5, 8, 9], [5, 9, 8], [9, 5, 8], [9, 8, 5], [8, 9, 5], [8, 5, 9]],
         [],
         [[1,1,1], [1,3,4]]]

input.each do |i|
  p count_distinct_triangles(i)
end

# https://www.facebookrecruiting.com/portal/coding_practice_question/?problem_id=720422605157879
