require_relative "../lib/weather.rb"
require_relative "../lib/day.rb"
require "pry"
require "pry-remote"
require "pry-nav"
require "faraday"
require "faraday_middleware"
require "support/api_data"
require "support/stubs"

RSpec.describe Day do
  describe "#temperature" do
    it "returns the current temperature" do
      points_stub
      forecast_stub
      forecast = Weather.new.get("32.7766", "-96.7969")

      temperature = forecast.temperature

      expect(temperature).to be_between(-30, 125).inclusive
    end
  end
end