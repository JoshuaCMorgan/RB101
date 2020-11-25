def triangle(side1, side2, side3)
  triangles = [side1, side2, side3]
  sum = triangles.reduce(:+)

  case
  when sum < 180 || triangles.include?(0)
    :invalid
  when triangles.include?(90)
    :right
  when triangles.all? { |tri| tri < 90}
    :acute
  else
    :obtuse
  end

end

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid
