
@result = []

def permute(array, visited, current)

  if current.length == array.length
    @result.append current.dup
    return
  end

  array.each_with_index do |num, i|
    unless visited[i]
      visited[i] = true
      current << num
      permute(array, visited, current)
      current.pop
      visited[i] = false
    end
  end


end


def all_permutations(array)
  current = []
  visited = Array.new(array.length, false)

  permute(array, visited, current)
end

input = [1,2,3]

all_permutations(input)

puts "Result: " + @result.to_s


# https://www.interviewbit.com/problems/permutations/
