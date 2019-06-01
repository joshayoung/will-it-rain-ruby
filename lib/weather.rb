require "day.rb"

class Weather
  def get(lat, long)
    url = forecast_url(latitude: lat, longitude: long)
    connection = Faraday.new(url: url) do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.response :json
    end
    response = connection.get(url)
    Day.new(response.body["properties"]["periods"].first)
  end

private

  def forecast_url(latitude:, longitude:)
    points = endpoints(latitude, longitude)
    points["properties"]["forecast"]
  end

  def endpoints(lat, long)
    url = "https://api.weather.gov"
    connection = Faraday.new(url: url) do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.response :json
    end
    connection.get(url + "/points/#{lat},#{long}").body
  end
end