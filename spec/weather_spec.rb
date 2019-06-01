require_relative "../lib/weather.rb"
require "pry"
require "pry-remote"
require "pry-nav"
require "faraday"
require "faraday_middleware"
require "support/api_data"

RSpec.describe Weather do
  describe "#forecast" do
    it "returns the format for the latitude and longitude passed" do
      weather = Weather.new

      points = weather.points(latitude: "32.7766", longitude: "-96.7969")

      expect(points).to eq(forecast_data)
    end
  end

  describe "#get" do
    it "return an object with current forecast" do
      weather = Weather.new
      forecast = weather.get("32.7766", "-96.7969")

      expect(forecast).to be_instance_of(Day)
    end
  end

  describe "#forecast" do
    it "returns the forecast URL" do
      weather = Weather.new

      forecast_url = weather.forecast_url(latitude: "32.7766", longitude: "-96.7969")

      expect(forecast_url).to eq("https://api.weather.gov/gridpoints/FWD/88,103/forecast")
    end
  end
end
