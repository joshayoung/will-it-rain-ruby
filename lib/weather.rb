require_relative "./fetch.rb"
require_relative "./day.rb"

class Weather
  attr_accessor :latitude
  attr_accessor :longitude

  def initialize(lat, long)
    @latitude = lat
    @longitude = long
  end

  def generated_at
    data["properties"]["generatedAt"]
  end

  def updated_at
    data["properties"]["updated"]
  end

  def get
    @get ||= Day.current(data["properties"]["periods"])
  end

  def day_name(name)
    get.each do |day|
      return day if day.name == name
    end
    "Unable to locate day"
  end

  def sunday
    day_name("sunday")
  end

  def monday
    day_name("monday")
  end

  def tuesday
    day_name("tuesday")
  end

  def wednesday
    day_name("wednesday")
  end

  def thursday
    day_name("thursday")
  end

  def friday
    day_name("friday")
  end

  def saturday
    day_name("saturday")
  end

private

  def data
    @data ||= Fetch.retrieve(
      forecast_url(
        latitude: latitude,
        longitude: longitude
      )
    )
  end

  def forecast_url(latitude:, longitude:)
    endpoints(latitude, longitude)["properties"]["forecast"]
  end

  def endpoints(lat, long)
    Fetch.retrieve("https://api.weather.gov/points/#{lat},#{long}")
  end
end
