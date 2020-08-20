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


# v2 of the soln

def plusOne_v2(a)
  carry = 1
  len = a.length

  a.each_index do |i|
    num = a[len - 1 - i] + carry
    a[len-1-i] = num%10
    carry = num/10
  end

  if carry > 0
    a.unshift(carry)
  end

  i = 0
  while a[i] == 0
    i+=1
  end

  return a.drop(i)
end

input = [0]

pp plusOne(input)
