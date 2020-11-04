
@result = []
def permutations(target, denominations, curr, start_index)
  
  diff = target - curr.sum
  
  if diff == 0
    @result = curr
    return true
  elsif diff < 0
    return false
  end

  (start_index..denominations.length - 1).each do |i|
    curr << denominations[i]
    if permutations(target, denominations, curr, i)
      return true
    end
    curr.pop
  end
  return false

end

def coin_change(coins, amount)
  coins.sort!.reverse!.uniq!

  if permutations(amount, coins, [], 0)
    return @result.length
  else
    return -1
  end
end

input = [2]
amount = 3

p coin_change(input, amount)
