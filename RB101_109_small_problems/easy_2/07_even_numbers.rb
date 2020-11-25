# Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.
number = 1
until number >= 99
  if number.even?
    puts number
  end
  number += 1
end
