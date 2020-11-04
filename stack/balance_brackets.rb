
def balance_brackets(string)
  return true if string.empty?
  return false if string.length.odd?

  stack = []

  string.each_char do |char|
    case char
    when '('
      stack << char
    when ')'
      last_bracket = stack.pop
      return false if last_bracket.nil?
      return false if last_bracket != '('
    when '{'
      stack << char
    when '}'
      last_bracket = stack.pop
      return false if last_bracket.nil?
      return false if last_bracket != '{'
    when '['
      stack << char
    when ']'
      last_bracket = stack.pop
      return false if last_bracket.nil?
      return false if last_bracket != '['
    end
  end

  return false if stack.any?
  return true
end


inputs = ['{[()]}', '{}()', '{(})', ')', '']

inputs.each { |i| puts balance_brackets(i) }
