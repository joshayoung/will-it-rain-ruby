require 'net/smtp'
require_relative './weather.rb'

class Mail
  attr_accessor :forecast
  attr_accessor :host
  attr_accessor :to
  attr_accessor :from

  def initialize(latitude: lat, longitude: long, host: nil, to: nil, from: nil)
    @host = host || ENV["HOST"]
    @to = to || ENV["TO"]
    @from = from || ENV["FROM"]
    @forecast = Weather.new(latitude, longitude).get[0]
  end

  def email_message
    content = <<EMAIL
    From: Test From <"#{from}">
    To: Test To <"#{to}">
    MIME-Version: 1.0
    Content-type: text/html
    Subject: Weather Notification
    <h1>Current Weather</h1>
    <p>"#{forecast.detailed_forecast}"</p>
EMAIL
    content
  end

  def send
    Net::SMTP.start(host) do |smtp|
      smtp.send_message email_message, to
    end
  end
end