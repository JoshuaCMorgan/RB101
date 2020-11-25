def halvsies(array)
  result = []
  middle_element = array.size/2

  if array.size.even?
    middle_element -= 1
  end

  result << array[0..middle_element]
  result << array[(middle_element + 1)..-1]

  result
end


halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
