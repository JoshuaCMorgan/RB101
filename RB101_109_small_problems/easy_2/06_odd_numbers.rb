# Print all odd numbers from 1 to 99, inclusive.
# All numbers should be printed on separate lines.

1.upto(99) do |number|
    if x.odd?
      puts x
    else
      next
    end
  end
# refactored
1.upto(99) { |number| puts num if num.odd? }

# or
(1..99).each { |number| puts num if num.odd? }

# or
100.times do |num|
  puts num if num % 2 == 1
end
