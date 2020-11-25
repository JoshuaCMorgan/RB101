def triangle(num)
  star = '*'
  1.upto(num) do |number|
    stars = star * number
    puts stars.rjust(num)
  end
end

# Alternative
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)
