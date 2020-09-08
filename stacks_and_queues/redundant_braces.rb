
def redundant_braces(string)
  paren_stack = []
  symbol_stack = []

  (0..string.length - 1).each do |i|
    char = string[i]
    if char == '('
      paren_stack << '('
    end
    if  ['+', ',', '/', '*'].include?(char) and !paren_stack.empty?
      symbol_stack << char
    end

    if char == ')'
      return 1 if symbol_stack.empty?
      return 1 if paren_stack.empty?
      paren_stack.pop
      symbol_stack.pop
    end
  end

  return 0
end

input = "(a*b)+(b*(d+(a)))"
p redundant_braces(input)


# https://www.interviewbit.com/problems/redundant-braces/
