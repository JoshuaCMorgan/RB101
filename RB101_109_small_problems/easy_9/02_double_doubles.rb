def twice(digit)
   num_string = digit.to_s
    first_index = num_string.length/2
    second_index = first_index + 1
    first_half = num_string.slice(0, first_index)
    second_half = num_string[first_index..-1]

    if first_half != second_half
      digit *= 2
    end

     digit
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
