class Gigasecond
    VERSION = 1
    def self.from(date)
        date + Time.at(10**9).utc.to_i
    end
end
