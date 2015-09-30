class Grains
  def self.square(n)
    @new_arr = [1]
    squares = 1.upto(64).to_a
    squares.inject do |a, b|
      result = a * 2
      @new_arr << result
      b = result
    end
    @new_arr[n-1]
  end

  def self.total
    @new_arr.inject {|a, b| a + b}
  end
end
