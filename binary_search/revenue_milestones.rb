
def find_day(array, milestone)
  return -1 if array.empty?
  day = -1
  start = 0
  fin = array.length - 1

  while start <= fin
    mid = start + (fin - start)/2
    if array[mid] == milestone
      day = mid
      break
    elsif array[mid] > milestone
      if array[mid-1].nil? or array[mid-1] < milestone
        day = mid
        break
      end
      fin = mid
    else
      start = mid + 1
    end
  end

  return (day == -1 ? day : day + 1)
end

def get_milestone_days(revenue, milestones)
  sum = 0
  aggregate = revenue.map { |rev| sum += rev }


  result = milestones.map { |milestone| find_day(aggregate, milestone) }

  return result

end


revenue = [700, 800, 600, 400, 600, 700]
milestones = [3100, 2200, 800, 2100, 1000]

p get_milestone_days(revenue, milestones)
