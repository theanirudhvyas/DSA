
def combinations(num, target_length, curr, visited, result, start_number)

  if curr.length == target_length
    result << curr.dup
  end

  (start_number..num).each do |number|
    unless visited[number]
      curr << number
      visited[number] = true
      combinations(num, target_length, curr, visited, result, number+1)
      curr.pop
      visited[number] = false
    end
  end


end

def combine(num, target_length)
  result = []
  curr = []
  visited = Array.new(num, false)

  combinations(num, target_length, curr, visited, result, 1)

  result
end

pp combine(4,2)
