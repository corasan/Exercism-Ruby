VERSION = 2

NUCLEOTIDES = {"G" => "C", "C" => "G", "T" => "A", "A" => "U"}

class Complement
    def self.of_dna(dna)
        raise ArgumentError.new unless dna.chars.all? {|n| n =~ /[GCTA]/}
        dna.chars.map {|strand| NUCLEOTIDES[strand]}.join
    end

    def self.of_rna(rna)
        raise ArgumentError.new unless rna.chars.all? {|n| n =~ /[CGAU]/}
        rna.chars.map {|strand| NUCLEOTIDES.key(strand)}.join
    end
end
