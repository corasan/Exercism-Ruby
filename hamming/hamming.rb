require 'pry'
VERSION = 1
class Hamming
    def self.compute(a, b)
        diff = 0
        i = 0
        if a.length == b.length
            while i < a.chars.length
                diff += 1 if a.chars[i] != b.chars[i]
                i += 1
            end
        else
            raise(ArgumentError)
        end
        diff
    end
end
