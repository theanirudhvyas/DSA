def users_on_day(day, growth_rates)
  growth_rates.reduce(0) {|users, rate| users += rate ** day}
end

def get_billion_users_day(growth_rates)  
  # Write your code here  
  start = 1
  fin = 20000
  billion = 1000000000
  
  while start <= fin
    mid_day = (start + fin)/2
    users = users_on_day(mid_day, growth_rates)
    
    if users == billion
      return mid_day
    elsif users > billion
      if users_on_day(mid_day-1, growth_rates) < billion
        return mid_day
      else
        fin = mid_day
      end
    else
      start = mid_day + 1
    end
  end
end


rates =  [1.01, 1.02]
p get_billion_users_day(rates)
