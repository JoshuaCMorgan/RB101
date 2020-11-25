DEGREE = "\xC2\xB0"
MINUTES_PER_DEG = 60
SECONDS_PER_MIN = 60

def dms(angle)
    degrees = angle.to_i
    deg_remainder = angle - degrees
    minutes = deg_remainder * MINUTES_PER_DEG
    min_remainder = minutes - minutes.to_i
    seconds = min_remainder * SECONDS_PER_MIN
    answer = "#{degrees}#{DEGREE}#{format("%02d'%02d", minutes, seconds)}"
end

p dms(30)
p dms(76.73)
p dms(254.6)
p dms(93.034773)
p dms(0)
p dms(360)
