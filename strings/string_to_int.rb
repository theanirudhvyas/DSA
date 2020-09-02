
def a_to_i(string)
  str = string.strip
  number = 0
  sign = nil
  if str[0] == '+'
    sign = 'pos'
    str[0] = ''
  elsif str[0] == '-'
    sign = 'neg'
    str[0] = ''
  end
  str.bytes.each do |bytes|
    num = bytes - 48
    break if num > 9 or num < 0
    number = number*10 + num
  end

  if sign == 'neg'
    number = number * -1
  end

  if number > 2147483647
    number = 2147483647
  elsif number < -2147483648
    number = -2147483648
  end

  return number
end

# https://www.interviewbit.com/problems/atoi/
