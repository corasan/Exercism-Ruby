class Integer
  ROMANS = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  def to_roman
    num = self
    ROMANS.inject("") do |converted, (arab_num, roman_num)|
      quotient, num = num.divmod(arab_num)
      converted << (roman_num * quotient)
    end
  end
end
