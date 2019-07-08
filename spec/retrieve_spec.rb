require_relative "../lib/retrieve.rb"

RSpec.describe Retrieve do
  describe "#data" do
    it "returns the forecast" do
      points_stub
      forecast_stub
      retrieve = Retrieve.new

      data = retrieve.data("32.7766", "-96.7969")

      expect(data).to eq(forecast)
    end
  end
end
