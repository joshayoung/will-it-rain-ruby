require_relative "../lib/weather.rb"

RSpec.describe Weather do
  before(:each) do
    points_stub
    forecast_stub
  end

  describe "#get" do
    it "return an object with current forecast" do
      weather = Weather.new("32.7766", "-96.7969")

      forecast = weather.get[0]

      expect(forecast).to be_instance_of(Day)
    end
  end

  describe "#generated_at" do
    it "returns the correct datetime" do
      weather = Weather.new("32.7766", "-96.7969")

      generated_at = weather.generated_at

      expect(generated_at).to eq("2019-06-02T01:05:47+00:00")
    end
  end

  describe "#updated_at" do
    it "returns the correct datetime" do
      weather = Weather.new("32.7766", "-96.7969")

      updated_at = weather.updated_at

      expect(updated_at).to eq("2019-06-01T20:04:52+00:00")
    end
  end
end
