
def multisum(number)
  numbers = []

  1.upto(number) do |num|
    if num % 3 == 0
      numbers << num
    elsif num % 5 == 0
      numbers << num
    end
  end

  numbers.inject {|sum, i| sum + i}
end



p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
