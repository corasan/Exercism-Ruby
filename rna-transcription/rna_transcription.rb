VERSION = 2

NUCLEOTIDES = {"G" => "C", "C" => "G", "T" => "A", "A" => "U"}

class Complement
    def self.of_dna(dna)
      validate(dna, /[GCTA]/)
      dna.chars.map {|nucleotide| NUCLEOTIDES[nucleotide]}.join
    end

    def self.of_rna(rna)
      validate(rna, /[CGAU]/)
      rna.chars.map {|nucleotide| NUCLEOTIDES.key(nucleotide)}.join
    end

    def self.validate(strand, sequence)
      raise ArgumentError.new("Error! Invalid complement.") unless strand.chars.all? {|n| n =~ sequence}
    end

end
