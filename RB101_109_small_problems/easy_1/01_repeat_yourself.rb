# My attempt

def repeat(string, integer)
until integer == 0
  puts string
  integer -= 1
end
end

repeat("hello", 10)

# another attempt

def repeat(string, integer)
  loop do
    puts string
    break if integer == 1
    integer -= 1
  end
end

repeat("hello", 3)
