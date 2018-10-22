module ItemsHelper

#TIME_REMAINING
  def time_remaining(expiring_time, item)
    if local_time(Time.now) >= expiring_time
      return "Expired"
    else
      return distance_of_time_in_words(local_time(Time.now), item.created_at + 7.days) + " left"
    end
  end

#BADGE_COLOR
  def badge_color(expiring_time)
    if local_time(Time.now) >= expiring_time 
      return "label label-danger label-as-badge pull-right"
    elsif local_time(Time.now) >= expiring_time - 3.days
      return "label label-warning label-as-badge pull-right"
    else
      return "label label-primary label-as-badge pull-right"
     end
  end


end
