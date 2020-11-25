def buy_fruit(fruits)
  fruit_list = []

  fruits.each do |fruit_group|
    fruit, quantity = fruit_group[0], fruit_group[1]
    quantity.times { fruit_list << fruit}
  end
  
  p fruit_list
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
