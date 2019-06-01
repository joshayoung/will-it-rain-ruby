require_relative "../lib/day.rb"
require "pry"
require "pry-remote"
require "pry-nav"
require "faraday"
require "faraday_middleware"
require "support/api_data"

RSpec.describe Day do
  describe "#temperature" do
    it "returns the current temperature" do
      forecast = Weather.new.get("32.7766", "-96.7969")

      temperature = forecast.temperature

      expect(temperature).to be_between(-30, 125).inclusive
    end
  end
end