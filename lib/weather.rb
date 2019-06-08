require_relative "./fetch.rb"
require_relative "./day.rb"

class Weather
  attr_accessor :latitude
  attr_accessor :longitude

  def initialize(lat, long)
    @latitude = lat
    @longitude = long
  end

  def get
    Day.current(data["properties"]["periods"])
  end

private

  def data
    @data ||= Fetch.retrieve(
      forecast_url(
        latitude: latitude,
        longitude: longitude
      )
    )
  end

  def forecast_url(latitude:, longitude:)
    endpoints(latitude, longitude)["properties"]["forecast"]
  end

  def endpoints(lat, long)
    Fetch.retrieve("https://api.weather.gov/points/#{lat},#{long}")
  end
end