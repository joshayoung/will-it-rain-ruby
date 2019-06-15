require 'net/smtp'
require_relative './weather.rb'

class Mail
  ATTRIBUTES = %i(forecast host to from).freeze
  attr_accessor(*ATTRIBUTES)

  def initialize(latitude: lat, longitude: long, host: nil, to: nil, from: nil)
    @host = host || ENV["HOST"]
    @to = to || ENV["TO"]
    @from = from || ENV["FROM"]
    @forecast = Weather.new(latitude, longitude).get[0]
  end

  def email_message
    <<EMAIL
    From: Test From <"#{from}">
    To: Test To <"#{to}">
    MIME-Version: 1.0
    Content-type: text/html
    Subject: Weather Notification
    <h1>Current Weather</h1>
    <p>"#{forecast.detailed_forecast}"</p>
EMAIL
  end

  def send
    Net::SMTP.start(host) do |smtp|
      smtp.send_message email_message, to
    end
  end
end