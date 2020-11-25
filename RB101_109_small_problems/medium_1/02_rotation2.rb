def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(num, digit)
  num_arr = num.to_s.split('')
  first_part = num_arr[0..-digit-1]
  second_part = num_arr[-digit, digit]

  (first_part + rotate_array(second_part)).join.to_i
end

# Alternative
def rotate_rightmost_digits(digits, rotations)
  array = digits.to_s.chars
  sub_array = array[-rotations..-1]
  array[-rotations..-1] = rotate_array(sub_array)
  array.join.to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
