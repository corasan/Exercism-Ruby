class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sums
    1.upto(@num).reduce {|a,b| a + b } ** 2
  end

  def sum_of_squares
    1.upto(@num).reduce {|a,b| a + b ** 2}
  end

  def difference
    square_of_sums - sum_of_squares
  end
end
