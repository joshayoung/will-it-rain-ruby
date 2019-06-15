require_relative "../lib/weather.rb"

RSpec.describe Weather do
  before(:each) do
    points_stub
    forecast_stub
    @weather = Weather.new("32.7766", "-96.7969")
  end

  describe "#get" do
    it "return an object with current forecast" do
      forecast = @weather.get[0]

      expect(forecast).to be_instance_of(Day)
    end
  end

  describe "#generated_at" do
    it "returns the correct datetime" do
      generated_at = @weather.generated_at

      expect(generated_at).to eq("2019-06-02T01:05:47+00:00")
    end
  end

  describe "#updated_at" do
    it "returns the correct datetime" do
      updated_at = @weather.updated_at

      expect(updated_at).to eq("2019-06-01T20:04:52+00:00")
    end
  end

  describe "each day" do
    it "returns a Day instance" do
      friday = @weather.friday

      expect(friday).to be_an_instance_of(Day)

    end

    it "returns the correct data called" do
      friday = @weather.friday

      expect(friday.name).to eq("friday")
    end

    it "each day returns the correct data" do
      ["sunday",
        "monday",
        "tuesday",
        "wednesday",
        "thursday",
        "friday",
        "saturday"].each do |day|
          week_day = @weather.send(day)
          expect(week_day).to be_an_instance_of(Day)
          expect(week_day.name).to eq(day)
        end
    end

    it "returns the correct message when day is not found" do
      forecast_stub_missing_tuesday
      tuesday = @weather.tuesday

      expect(tuesday).to eq("Unable to locate day")
    end
  end
end
