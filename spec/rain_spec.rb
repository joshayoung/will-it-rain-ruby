require_relative "../lib/rain.rb"

RSpec.describe Rain do
  describe "#temperature" do
    it "returns the current temperature" do
      rain = Rain.new

      rain.temperature

      expect(rain.temperature).to eq("90")
    end
  end
end
