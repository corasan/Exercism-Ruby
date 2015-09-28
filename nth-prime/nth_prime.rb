class Prime
  def self.nth(n)
    raise ArgumentError, "Invalid Value" if n <= 0
    count = 1
    num = 2
    prime = nil
    while count <= n
      if prime?(num)
        count += 1
        prime = num
      end
      num += 1
    end
    prime
  end

  def self.prime?(number)
    is_prime = true
    2.upto(Math.sqrt(number)) {|i| is_prime = false if number % i == 0 }
    is_prime
  end

end
