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
      day = Day.new("_")

      temperature = day.temperature

      expect(temperature).to eq("90")
    end
  end
end