def rotate_array(array)
  array[1..-1] + [array[0]]
end

def bubble_sort!(digits)
  max = digits.size
  begin_digits = digits.dup
  loop do
    0.upto(max-2) do |n|
      if digits[n] > digits[n + 1]
        digits[n..n+1] = rotate_array(digits[n..n+1])
      end
    end
    break if begin_digits == digits
    begin_digits = digits.dup
  end
  digits
end

# Alternative
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
