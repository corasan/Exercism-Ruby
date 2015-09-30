VERSION = 1
class Phrase
  def initialize(phrase)
    @words = phrase.downcase.gsub(/((?:\s)\W)|((?:\W)\s)|((?:\W)\W)|(\,)|(\.)/, " ").split(" ")
  end

  def word_count
    words_hash = {}
    @words.each { |w| words_hash[w] = @words.count(w) }
    words_hash
  end
end
