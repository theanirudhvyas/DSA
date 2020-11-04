

def largest_triple_product(array)
  return Array.new(array.length, -1) if array.length < 3
  candidates = array[0..2]
  
  result = Array.new(2, -1)
  result << candidates.reduce(:*)
  array[3..-1].each do |num|
    min_index = candidates.each_with_index.min[1]
    if candidates[min_index] < num
      candidates[min_index] = num
    end
    require 'pry'; binding.pry
    result << candidates.reduce(:*)
  end

  result
end


input = [[1, 2, 3, 4, 5],
       [2, 1, 2, 1, 2]]

input.each do |i|
  pp largest_triple_product(i)
end




# https://www.facebookrecruiting.com/portal/coding_practice_question/?problem_id=510655302929581
