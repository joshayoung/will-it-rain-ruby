class Day
  def initialize(data)
    @data = data
  end

  def self.current(data)
    @forecast ||= begin
      forecast = []
      data.each do |current_day|
        forecast.push(new(current_day))
      end
    forecast
    end
  end

  def name
    @data["name"].downcase
  end

  def start_time
    @data["startTime"]
  end

  def end_time
    @data["endTime"]
  end

  def is_day_time
    @data["isDaytime"]
  end

  def temperature
    @data["temperature"]
  end

  def temperature_unit
    @data["temperatureUnit"]
  end

  def wind_speed
    @data["windSpeed"]
  end

  def wind_direction
    @data["windDirection"]
  end

  def short_forecast
    @data["shortForecast"]
  end

  def detailed_forecast
    @data["detailedForecast"]
  end
end