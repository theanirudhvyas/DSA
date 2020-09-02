

def is_painting_possible(array, painters, time_mid)
  painters_required = 1
  current_painter_units = 0

  array.each do |units|
    if (current_painter_units + units) > time_mid
      painters_required += 1
      current_painter_units = units
    else
      current_painter_units += units
    end
  end


  return painters_required <= painters
end


def minimum_time_to_paint(array, painters, time)
  time_low = array.max
  time_high = array.reduce(:+)


  while time_low < time_high
    time_mid = (time_low + time_high) / 2
    if is_painting_possible(array, painters, time_mid)
      time_high = time_mid
    else
      time_low = time_mid + 1
    end
  end

  
  return (time_low * time) % 10000003
end


input_arr = [1, 10]
input_arr_2 = [1, 8, 11, 3]
input_arr_3 = [ 640, 435, 647, 352, 8, 90, 960, 329, 859 ]

#puts minimum_time_to_paint(input_arr, 2, 5)
# puts minimum_time_to_paint(input_arr_2, 10, 1)
puts minimum_time_to_paint(input_arr_3, 3, 10)
