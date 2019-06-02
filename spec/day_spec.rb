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
  describe "Each method returns the correct output" do
    before(:each) do
      points_stub
      forecast_stub
      @forecast = Weather.new.get("32.7766", "-96.7969")
    end

    context "when called start_time" do
      it "returns the current start time" do
        start_time = @forecast.start_time

        expect(start_time).to eq("2019-06-01T20:00:00-05:00")
      end
    end

    context "when called end_time" do
      it "returns the current end time" do
        end_time = @forecast.end_time

        expect(end_time).to eq("2019-06-02T06:00:00-05:00")
      end
    end

    context "when called is_day_time" do
      it "returns the boolean value for day or night" do
        is_day_time = @forecast.is_day_time

        expect(is_day_time).to eq(false)
      end
    end

    context "when called temperature" do
      it "returns the current temperature" do
        temperature = @forecast.temperature

        expect(temperature).to eq(74)
      end
    end

    context "when called temperature_unit" do
      it "returns the current temperature unit" do
        temperature_unit = @forecast.temperature_unit

        expect(temperature_unit).to eq("F")
      end
    end

    context "when called wind_speed" do
      it "returns the current wind speed" do
        wind_speed = @forecast.wind_speed

        expect(wind_speed).to eq("5 mph")
      end
    end

    context "when called wind_direction" do
      it "returns the current wind direction" do
        wind_direction = @forecast.wind_direction

        expect(wind_direction).to eq("SE")
      end
    end

    context "when called short_forecast" do
      it "returns the short version of the forecast" do
        short_forecast = @forecast.short_forecast

        expect(short_forecast).to eq("Chance Showers And Thunderstorms")
      end
    end

    context "when called detailed_forecast" do
      it "returns the detailed version of the forecast" do
        detailed_forecast = @forecast.detailed_forecast

        expect(detailed_forecast).to eq("A chance of showers and thunderstorms before 1am. Partly cloudy. Low around 74, with temperatures rising to around 76 overnight. Southeast wind around 5 mph. Chance of precipitation is 30%.")
      end
    end
  end
end