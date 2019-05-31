class Weather
  def temperature
    "90"
  end

  def forecast(latitude:, longitude:)
    endpoints(latitude, longitude)
  end

  private

  def endpoints(lat, long)
    connection = Faraday.new(url: "https://api.weather.gov") do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.response :json
    end
    response = connection.get("points/#{lat},#{long}")
    response.body
  end
end