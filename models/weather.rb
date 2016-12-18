class Weather
  attr_accessor :fetch

  def initialize(city)
    @fetch = WeatherAdapter.new(city: city).weather_info
  end

  def today
    fetch["list"][0]['main']['temp']
  end

  def next_five_days
    fetch['list'].each_with_index.collect do |day, index|
      "Day #{index+1} #{day['main']['temp']}"
    end
  end
end
