require_relative "./fetch.rb"

class Retrieve
  def initialize(latitude:, longitude:)
    @latitude = latitude
    @longitude = longitude
  end

  def data
    @data ||= JSON.parse(
      Fetch.get(forecast_url)
    )
  end

private

  def forecast_url
    endpoints["properties"]["forecast"]
  end

  def endpoints
    JSON.parse(Fetch.get("https://api.weather.gov/points/#{@latitude},#{@longitude}"))
  end
end
