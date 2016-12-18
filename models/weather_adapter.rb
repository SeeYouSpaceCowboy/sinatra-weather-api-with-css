class WeatherAdapter
  URL = "http://api.openweathermap.org/data/2.5/forecast?q="
  API_KEY = "&APPID=c0ba3d138b62d616c8512d45cb84fc92"

  attr_accessor :weather_info

  def initialize(city: city)
    query = parse(city)
    rest_obj = RestClient.get("#{URL}#{query}&units=imperial#{API_KEY}")
    @weather_info = JSON.parse(rest_obj)
  end

  private

  def parse(city)
    city.strip.gsub(" ", "+")
  end

  def full_url(query, country = nil)
    if country
      "#{URL}#{query},#{country}&units=imperial#{API_KEY}"
    else
      "#{URL}#{query}&units=imperial#{API_KEY}"
    end
  end
end
