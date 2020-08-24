
def recurse_divide(candidate, num)
  qoutient = num/candidate
  remainder = num%candidate

  return false if remainder != 0

  if qoutient < 2
    return remainder == 0 ? true : false
  end

  recurse_divide(candidate, qoutient)
end

def is_power(a)
  sqrt = Math.sqrt(a)
  return true if a == 1
  return true if sqrt.is_a?(Integer)

  (2..sqrt.to_i).each do |candidate| 
    return true if recurse_divide(candidate, a)
  end
  return false
end

input = 823543
puts is_power(input)
