require 'pry'
VERSION = 1
class Hamming
    def self.compute(a, b)
        raise ArgumentError, "Distance between both strands are different." unless a.length == b.length
        a.chars.zip(b.chars).count{|x,y| x != y}
    end
end
