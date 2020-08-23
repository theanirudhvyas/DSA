
## return 1 if number is prime, otherwise return 0
def verify_prime(number)
  if number < 2
    return 0
  end
  num_sqrt = Math.sqrt(number).to_i
  (2..num_sqrt).each do |num|
    if number%num == 0
      return 0
    end
  end
  return 1
end

pp verify_prime(7)
