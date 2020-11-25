 def diamond(max)
  star = "*"
  num = 1

  loop do
    stars = star * num
    puts stars.center(max)
    break if num == max
    num += 2
  end

  num = max
  loop do
    num -= 2
    break if num < 1
    stars = star * num
    puts stars.center(max)
  end
 end

# Alternative
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

diamond(1)
diamond(3)
diamond(9)
