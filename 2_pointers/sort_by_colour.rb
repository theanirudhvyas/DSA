
def sort(array)
  counts = {}
  counts.default = 0

  array.each do |num|
    counts[num] += 1
  end
  array = Array.new(counts[0], 0) + Array.new(counts[1], 1) + Array.new(counts[2], 2)
end

input = [0, 1, 2, 0, 1, 2]

sort(input)
pp input
