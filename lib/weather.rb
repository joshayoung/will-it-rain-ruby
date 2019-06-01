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

  def points(latitude:, longitude:)
    endpoints(latitude, longitude)
  end

  def forecast_url(latitude:, longitude:)
    points = points(latitude: latitude, longitude: longitude)
    points["properties"]["forecast"]
  end

  def forecast(url)
    connection = Faraday.new(url: url) do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.response :json
    end
    response = connection.get(url)
    response.body
  end

private

  def endpoints(lat, long)
    url = "https://api.weather.gov"
    connection = Faraday.new(url: url) do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.response :json
    end
    url = url + "/points/#{lat},#{long}"
    response = connection.get(url)
    response.body
  end
end