require 'net/smtp'
require 'faraday'
require_relative './weather.rb'
require "pry"
require "pry-remote"
require "pry-nav"

lat = ARGV[0]
long = ARGV[1]
forecast = Weather.new.get(lat, long)

eamil_message = <<EMAIL
From: Test From <"#{ENV['FROM_EMAIL1']}">
To: Test To <"#{ENV['TO_EMAIL1']}">
MIME-Version: 1.0
Content-type: text/html
Subject: Weather Notification

<h1>Email Body</h1>
forecast.detailed_forecast
EMAIL

Net::SMTP.start(ENV["HOST"]) do |smtp|
   smtp.send_message email_message, ENV["TO_EMAIL1"]
end