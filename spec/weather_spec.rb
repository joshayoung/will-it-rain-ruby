require_relative "../lib/weather.rb"
require "pry"
require "pry-remote"
require "pry-nav"
require "faraday"
require "faraday_middleware"
require "support/api_data"
require "support/stubs"

RSpec.describe Weather do
  describe "#get" do
    it "return an object with current forecast" do
      points_stub
      forecast_stub
      weather = Weather.new("32.7766", "-96.7969")

      forecast = weather.get

      expect(forecast).to be_instance_of(Day)
    end
  end
end
