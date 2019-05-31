require_relative "../lib/weather.rb"
require "pry"
require "pry-remote"
require "pry-nav"

RSpec.describe Weather do
  describe "#temperature" do
    it "returns the current temperature" do
      weather = Weather.new

      weather.temperature

      expect(weather.temperature).to eq("90")
    end
  end
end
