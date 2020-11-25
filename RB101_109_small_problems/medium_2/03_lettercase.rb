LOW_CASE = ('a'..'z').to_a
UP_CASE = ("A".."Z").to_a


def letter_percentages(string)
  result_percent = {uppercase: 0, lowercase: 0, neither: 0}
  result_number = {uppercase: 0, lowercase: 0, neither: 0}
  string_size = string.length
   string.chars.each do |letter|
     if LOW_CASE.include?(letter)
       result_number[:lowercase] += 1
     elsif UP_CASE.include?(letter)
       result_number[:uppercase] += 1
     else
       result_number[:neither] += 1
     end
  end

  result_percent[:lowercase] = result_number[:lowercase].to_f / string_size.to_f * 100
  result_percent[:uppercase] = result_number[:uppercase].to_f / string_size.to_f * 100
  result_percent[:neither] = result_number[:neither].to_f / string_size.to_f   * 100

  result_percent
end

letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
