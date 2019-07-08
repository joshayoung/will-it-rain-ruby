require_relative "../lib/email.rb"
require_relative "../lib/weather.rb"

email = Email.new(
  host: "test@example.com",
  to: "to@example.com",
  from: "from@example.com",
  subject: "Test Subject",
  body: "Test Body"
)

puts email.email_message
# puts email.send_mail
