require 'nokogiri'
require 'open-uri'

class Weather

  def initialize
    weather = "http://www.weather.com/weather/today/Jackson+Heights+NY+11372:4:US"
    doc = Nokogiri::HTML(open(weather))
    @temperature_today = doc.css(".wx-temperature").children.children.first.text



    @temperature_tonight = doc.css(".wx-temperature").children[4].text
  end

  def temperature_today
    @temperature_today
  end

  def temperature_tonight
    @temperature_tonight
  end
end

