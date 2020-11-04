
def slow_sum(input)
  input.sort!
  penalty = 0
  while input.length > 1
    sum = input.pop + input.pop
    input << sum
    penalty += sum
  end

  return penalty
end

input = [4, 2, 1, 3]

p slow_sum(input)

