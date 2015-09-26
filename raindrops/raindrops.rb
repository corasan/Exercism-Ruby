class Raindrops
  RAINDROP = {"Pling" => 3, "Plang" => 5, "Plong" => 7}
  def self.convert(num)
    raindrop_speak = ""
    RAINDROP.each_pair {|k, v| raindrop_speak << k if num % v == 0}
    raindrop_speak.empty? ? num.to_s : raindrop_speak
  end
end
