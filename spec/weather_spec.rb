require_relative "../lib/weather.rb"
require "pry"
require "pry-remote"
require "pry-nav"
require "faraday"
require "faraday_middleware"
require "support/api_data"

RSpec.describe Weather do
  describe "#temperature" do
    it "returns the current temperature" do
      weather = Weather.new

      temperature = weather.temperature

      expect(temperature).to eq("90")
    end
  end

  describe "#forecast" do
    it "returns the format for the latitude and longitude passed" do
      weather = Weather.new

      forecast = weather.forecast(latitude: "40.7127", longitude: "-74.0059")

      expect(forecast).to eq(forecast_data)
    end
  end
end
