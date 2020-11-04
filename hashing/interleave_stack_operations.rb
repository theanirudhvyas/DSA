def push_out_string(number)
  "p_%d" % number
end

def pop_out_string(number)
  "o_%d" % number
end

def interleave(push_seq, pop_seq)
  last_pos = {}
  pop_position, push_position = [0,1]
  stack = [push_seq[0]]
  result = [push_out_string(push_seq[0])]
  last_pos.default = 0

  push_seq.each_with_index { |element, i| last_pos[element] = i }

  while pop_position < pop_seq.length
    pop_element = pop_seq[pop_position]
    if pop_element == stack[-1]
      result << pop_out_string(pop_element)
      stack.pop
    else
      if push_position > last_pos[pop_element]
        result << pop_out_string(pop_element)
        stack.pop
      else
        while push_position <= last_pos[pop_element]
          result << push_out_string(push_seq[push_position])
          stack << push_seq[push_position]
          push_position += 1
        end
        result << pop_out_string(pop_element)
        stack.pop
      end
    end
    pop_position += 1
  end

  return result
end


# element = gets
# push_string = gets
# pop_string = gets
# 
# push_seq = push_string.split(,).map { |num| num.to_i }
# pop_seq = push_string.split(,).map { |num| num.to_i }
# 
# p interleave(push_seq, pop_seq)









def interleave_v2(push_seq, pop_seq)
  pop_pos = 0
  stack = []
  result = []

  push_seq.each do |push_element|
    result << push_out_string(push_element)
    stack << push_element

    while pop_pos < pop_seq.length and stack[-1] == pop_seq[pop_pos]
      result << pop_out_string(pop_seq[pop_pos])
      stack.pop
      pop_pos += 1
    end
  end

  result
end

def interleave_v3(push_seq, pop_seq)
  start = 0
  fin = push_seq.length - 1
  insert_position = 0
  result = []
  i = push_seq.length - 1

  while i >= 0
    if pop_seq[i] == push_seq[start]
      result.insert(insert_position, pop_out_string(pop_seq[i]))
      result.insert(insert_position, push_out_string(push_seq[start]))
      start += 1
      insert_position += 1
    elsif pop_seq[i] == push_seq[fin]
      result.insert(insert_position, pop_out_string(pop_seq[i]))
      result.insert(insert_position, push_out_string(push_seq[fin]))
      fin -= 1
    end
    i -= 1
  end

  result

end



inputs = [ {push_seq: [448, 414, 613, 356, 356, 414, 367, 448, 367, 613],
           pop_seq: [414, 356, 367, 448, 367, 356, 613, 414, 448, 613],
           result: %w(p_448 p_414 p_613 p_356 p_356 p_414 o_414 o_356 p_367 p_448 p_367 o_367 o_448 o_367 o_356 o_613 o_414 o_448 p_613 o_613)},
          {push_seq: [603, 714, 24, 121, 225, 714, 225, 603, 121, 225, 772, 714, 772, 772, 24, 603, 121, 24],
           pop_seq: [714, 225, 121, 603, 24, 772, 772, 714, 772, 225, 121, 603, 225, 121, 24, 714, 24, 603],
           result: %w(p_603 p_714 o_714 p_24 p_121 p_225 o_225 o_121 p_714 p_225 p_603 p_121 p_225 p_772 p_714 p_772 p_772 p_24 p_603 o_603 o_24 o_772 o_772 o_714 o_772 o_225 o_121 o_603 o_225 p_121 o_121 p_24 o_24 o_714 o_24 o_603)},
          {push_seq: [1,2,3,4],
           pop_seq: [3,2,1,4],
           result: %w(p_1 p_2 p_3 o_3 o_2 o_1 p_4 o_4)},
          {push_seq: [1,1,2,3],
           pop_seq: [2,1,3,1],
           result: %w(p_1 p_2 p_3 o_3 o_2 o_1 p_4 o_4)}

        ]


inputs.each do |input|
  equal = input[:result] == interleave_v3(input[:push_seq], input[:pop_seq])
  require 'pry'; binding.pry unless equal
end


