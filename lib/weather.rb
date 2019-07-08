require_relative "./day.rb"
require_relative "./retrieve.rb"

class Weather
  def initialize(lat, long)
    @latitude = lat
    @longitude = long
  end

  def get
    @get ||= Day.current(data["properties"]["periods"])
  end

  def generated_at
    data["properties"]["generatedAt"]
  end

  def updated_at
    data["properties"]["updated"]
  end

  %w(sunday monday tuesday wednesday thursday friday saturday).each do |day|
    define_method(day.to_sym) do
      day_name(day)
    end
  end

private

  def retrieve
    @retrieve ||= Retrieve.new(
      latitude: @latitude,
      longitude: @longitude
    )
  end

  def day_name(name)
    get.each do |day|
      return day if day.name == name
    end
    "Unable to locate day"
  end

  def data
    retrieve.data
  end
end
