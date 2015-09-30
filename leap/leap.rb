class Year
  def self.leap?(year)
    if year % 4 != 0
    elsif year % 100 != 0
      true
    elsif year % 400 != 0
    else
      true
    end
  end
end
