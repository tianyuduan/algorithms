#given roman numeral, convert into integer
#input it from a range of 1 to 3999

def roman_to_int(string)
  roman = {'M' => 1000, 'D'=>  500, 'C'=>  100, 'L'=> 50, 'X'=> 10, 'V'=> 5, 'I'=> 1}
  sum = 0
  string.split("").each do |i|
    sum += roman[i]
  end
  sum
end
 roman_to_int("MMCXVI")

def int_to_roman(int)
    m = ["", "M", "MM", "MMM"]
    c = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
    x = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
    i = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]

    m[int/1000] + c[(int%1000)/100] + x[(int%100)/10] + i[int%10]
end
