require 'pry'
VERSION = 1
class Hamming
    def self.compute(a, b)
        raise(ArgumentError) unless a.length == b.length
        a.chars.zip(b.chars).count{|x,y| x != y}
    end
end
