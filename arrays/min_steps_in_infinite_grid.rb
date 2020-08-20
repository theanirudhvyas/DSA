def coverPoints(a, b)
  steps = 0

  i = 1
  while i < a.length
    steps += [(b[i]-b[i-1]).abs, (a[i]-a[i-1]).abs].max
    i+=1
  end

  return steps
end


a =[0, 1, 2]
b = [0, 1, 1]

pp coverPoints(a,b)
