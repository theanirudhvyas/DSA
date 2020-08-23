def verify_prime(number)
  return false if number < 2
  num_sqrt = Math.sqrt(number).to_i

  (2..num_sqrt).each do |num| 
    return false if number%num == 0
  end

  return true

end

def prime_sum(number)

  (2..number/2).each do |num|
    return [num, number-num] if verify_prime(num) and verify_prime(number-num)
  end
end

pp prime_sum(4)
pp prime_sum (156)
