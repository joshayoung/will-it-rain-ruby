require_relative "../lib/mail.rb"

mail = Mail.new(
  latitude: "32.7766",
  longitude: "-96.7969",
  host: "test@example.com",
  to: "to@example.com",
  from: "from@example.com"
)

mail.send