def interleave(arr1, arr2)
  combined_arr = []
  index = 0
  while index < arr1.size
    combined_arr.push(arr1[index], arr2[index])
    index += 1
  end
  combined_arr
end

#alternative
def interleave(array1, array2)
  array1.zip(array2).flatten
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
