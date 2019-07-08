require_relative "./fetch.rb"

class Retrieve
  def data(latitude, longitude)
    @data ||= JSON.parse(Fetch.retrieve(
                           forecast_url(
                             latitude: latitude,
                             longitude: longitude
                           )
                         ))
  end

private

  def forecast_url(latitude:, longitude:)
    endpoints(latitude, longitude)["properties"]["forecast"]
  end

  def endpoints(lat, long)
    JSON.parse(Fetch.retrieve("https://api.weather.gov/points/#{lat},#{long}"))
  end
end
