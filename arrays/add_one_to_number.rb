def digits(number)
  q = number/10
  r = number%10
  if q == 0
    return [r]
  else
    return [digits(q), r]
  end
end

def plusOne(a)
  number = 0
  
  a.each_with_index do |n, i|
    number += n*(10**(a.length - 1 - i))
  end
  digits(number+1).flatten
end

input = [0]

pp plusOne(input)
