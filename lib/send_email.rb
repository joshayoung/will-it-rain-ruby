require_relative "../lib/email.rb"

email = Email.new(
  host: "test@example.com",
  to: "to@example.com",
  from: "from@example.com",
  subject: "Test Subject",
  body: "Test Body"
)

puts email.send_mail