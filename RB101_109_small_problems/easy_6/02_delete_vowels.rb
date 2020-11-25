
def remove_vowels(array)
  array.each do |word|
    word.delete!('AEIOUaeiou')
  end
  p array
end

# Alternative
def remove_vowels(array)
  array.map { |item| item.gsub(/[aeiou]/i, "") }
end

 remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
 remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
 remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
