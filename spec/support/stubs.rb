def points_stub
  stub_request(:get, "https://api.weather.gov/points/32.7766,-96.7969").
  with(
    headers: {
    'Accept'=>'*/*',
    'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
    'User-Agent'=>'Faraday v0.15.4'
    }).
  to_return(status: 200, body: endpoints.to_json, headers: {})
end

def forecast_stub
  stub_request(:get, "https://api.weather.gov/gridpoints/FWD/88,103/forecast").
  with(
    headers: {
    'Accept'=>'*/*',
    'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
    'User-Agent'=>'Faraday v0.15.4'
    }).
  to_return(status: 200, body: forecast.to_json, headers: {'Content-Type': 'application/json'})
end
