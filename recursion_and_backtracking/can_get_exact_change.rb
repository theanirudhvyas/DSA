
def permutations(target, denominations, start_index)

  (start_index..denominations.length - 1).each do |i|
    diff = target - denominations[i]
    if diff == 0
      return true
    elsif diff < 0
      return false
    end
    return true if permutations(diff, denominations, i)
  end
end

def can_get_exact_change(target, denominations)
  denominations.sort!.uniq!

  return permutations(target, denominations, 0)
end


input = [4, 17, 29]
target = 75

p can_get_exact_change(target, input)
