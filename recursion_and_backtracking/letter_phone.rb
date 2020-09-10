
def combinations(string, letter_map, result, curr, start_index)

  if curr.length == string.length
    result << curr.join
    return
  end

  (start_index..(string.length - 1)).each do |i|
    letter_map[string[i]].each do |char|
      curr << char
      combinations(string, letter_map, result, curr, i+1)
      curr.pop
    end
  end
end


def letter_combinations(string)
  letter_map = {
    '0' => %w(0),
    '1' => %w(1),
    '2' => %w(a b c),
    '3' => %w(d e f),
    '4' => %w(g h i),
    '5' => %w(j k l),
    '6' => %w(m n o),
    '7' => %w(p q r s),
    '8' => %w(t u v),
    '9' => %w(w x y z)
  }

  result = []
  curr = []

  combinations(string, letter_map, result, curr, 0)

  result
end

input = '23'

pp letter_combinations(input)
