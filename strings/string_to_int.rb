
INT_MAX = 2147483647
INT_MIN = -2147483648

def a_to_i(string)
  str = string.strip
  number = 0
  sign = +1
  if str[0] == '+'
    str[0] = ''
  elsif str[0] == '-'
    sign = -1
    str[0] = ''
  end
  str.bytes.each do |bytes|
    num = bytes - 48
    break if num > 9 or num < 0
    number = number*10 + num
  end


  number = number * sign
  if number > INT_MAX
    number = INT_MAX
  elsif number < INT_MIN
    number = INT_MIN
  end

  return number
end

# https://www.interviewbit.com/problems/atoi/
