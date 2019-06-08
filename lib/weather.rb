require "fetch.rb"
require "day.rb"

class Weather
  def get(lat, long)
    data = Fetch.retrieve(forecast_url(latitude: lat, longitude: long))
    Day.current(data["properties"]["periods"].first)
  end

private

  def forecast_url(latitude:, longitude:)
    endpoints(latitude, longitude)["properties"]["forecast"]
  end

  def endpoints(lat, long)
    Fetch.retrieve("https://api.weather.gov/points/#{lat},#{long}")
  end
end