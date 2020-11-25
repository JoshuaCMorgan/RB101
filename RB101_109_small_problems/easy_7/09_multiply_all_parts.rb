def multiply_all_pairs(nums1, nums2)
  result = []
  nums1.each do |number1|
    nums2.each do |number2|
      result << number1 * number2
    end
  end
  result.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
