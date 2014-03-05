def Roman(number)
  roman_numerals = { 1000=>"M", 500=>"D", 100=>"C", 50=>"L", 10=>"X", 5=>"V", 1=>"I" }

  result_arr = []

  roman_numerals.each do |keys, values|
    roman_numerals.keys.each do |key|
       puts key.to_s + "key enter first loop"

      if number % key >= 0 && number >= key
        result_arr << roman_numerals[key]
        puts number.to_s + "number first"
        puts key.to_s + "key "
        puts roman_numerals[key] + "roman numerals [key] "
        number = number - key
        puts number.to_s + "number "
        redo

       
      end
    end
  end
  result_arr = result_arr.join("")

   result_arr.gsub! "MDDDD", "MMM"
   result_arr.gsub! "DCCCC", "CM"
   result_arr.gsub! "CCCC", "CD"
   result_arr.gsub! "LXXXX", "XC"
   result_arr.gsub! "XXXX", "XL"
   result_arr.gsub! "VIIII", "IX"
   result_arr.gsub! "IIII", "IV"
   result_arr
end


