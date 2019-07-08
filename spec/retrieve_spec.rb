require_relative "../lib/retrieve.rb"

RSpec.describe Retrieve do
  describe "#data" do
    it "returns the forecast" do
      points_stub
      forecast_stub
      retrieve = Retrieve.new(
        latitude: "32.7766",
        longitude: "-96.7969"
      )

      data = retrieve.data

      expect(data).to eq(forecast)
    end
  end
end
