require 'uri'

class Fetcher

  def self.get(input)
  city = input.gsub(" ", "")
  puts "Getting the weather now"
  weather = `curl "0.0.0.0:3000/infos/#{city}"`
  puts weather
  end
end
