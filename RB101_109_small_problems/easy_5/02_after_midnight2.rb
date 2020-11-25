# def after_midnight(time)
#
# end
#
# def before_midnight(time)
#
# end
MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def after_midnight(time)
  hours, minutes = time.split(':')
  hours = hours.to_i
  minutes = minutes.to_i
  delta_minutes = hours * MINUTES_PER_HOUR + minutes
  delta_minutes % MINUTES_PER_DAY
end


def before_midnight(time)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time)
  return 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end



p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
