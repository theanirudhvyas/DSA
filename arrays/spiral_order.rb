def spiralOrder(a)
  left = 0
  top = 0
  right = a[0].length - 1
  bottom = a.length - 1
  direction = 'right'
  result = []
  while ((left <= right) and (top <= bottom))
    if direction == 'right'
      (left..right).each do |j|
        result << a[top][j]
      end
      top+=1
         direction = 'down'

    elsif direction == 'down'
      (top..bottom).each do |i|
        result << a[i][right]
      end
      right-=1
           direction = 'left'

    elsif direction == 'left'
      (left..right).each do |j|
        result << a[bottom][left+right-j]
      end
      bottom-=1
            direction = 'up'
    elsif direction == 'up'
      (top..bottom).each do |i|
        result << a[top+bottom-i][left]
      end
      left+=1
          direction = 'right'
    end
  end
  return result
end

array = [[ 1, 2, 3 ],
         [ 4, 5, 6 ],
         [ 7, 8, 9 ]]

puts spiralOrder(array)
