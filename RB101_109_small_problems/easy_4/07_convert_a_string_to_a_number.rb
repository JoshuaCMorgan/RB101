NUMBERS = {'1' => 1, '2' => 2, '3' => 3, '4' => 4,
          '5' => 5, '6' => 6, '7' => 7, '8' => 8,
          '9' => 9, '0'=>  0}

def string_to_integer(string)
  numbers = []

   string.chars.each do |number|
      numbers << NUMBERS.fetch(number)
   end

   value = 0
   numbers.each do |number|
     value = 10 * value + number
   end
   value
end


string_to_integer('4321') == 4321
string_to_integer('570') == 570
