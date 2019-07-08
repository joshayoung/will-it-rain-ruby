require_relative "../lib/weather.rb"

forecast = Weather.new("32.7766", "-96.7969").get

# TODO: clean up this:
forecast_len = 0
forecast.each do |day|
  day_len = day.short_forecast.size
  forecast_len = day_len if day_len > forecast_len
end

forecast_len += 20

# TODO: clean up this:
puts "-" * forecast_len
forecast.each do |day|
  puts "| " + day.name + " | " + day.short_forecast + " |"
  puts "-" * forecast_len
end
