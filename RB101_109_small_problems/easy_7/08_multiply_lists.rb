def multiply_list(nums1, nums2)
  result = []
  index = 0

  loop do
    result << nums1[index] * nums2[index]
    index += 1
    break if index == nums1.size
  end
  p result
end

# Alternative
def multiply_list(list_1, list_2)
  products = []
  list_1.each_with_index do |item, index|
    products << item * list_2[index]
  end
  products
end


multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
