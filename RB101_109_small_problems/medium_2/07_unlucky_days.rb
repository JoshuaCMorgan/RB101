require 'date'

def friday_13th(year)
  (1..12).count { |month| Date.new(year, month, 13).friday? }
end

# Alternative
def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end


friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2
