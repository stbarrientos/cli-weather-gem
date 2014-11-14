require 'uri'

class Fetcher

  def self.get(input)
  city = input.gsub(" ", "")
  puts "Getting the weather now"
  weather = `curl "cli-weather.herokuapp.com/infos/#{city}"`
  puts weather
  end
end
