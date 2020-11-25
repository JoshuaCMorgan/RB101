def merge(arr1, arr2)
  array = []
  arr1.each {|e| array << e}
  arr2.each {|e| array << e}
  array.uniq
end

# Alternative
def merge(array_1, array_2)
  array_1 | array_2
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
