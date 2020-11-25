
# One way
def calculate_bonus(salary, gets_bonus)
  if gets_bonus
    salary/2
  else
    0
  end
end

# Another
def calculate_bonus(salary, gets_bonus)
  gets_bonus ? (salary/2) : 0
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
