require_relative "../lib/mail.rb"

mail = Mail.new(
  host: "test@example.com",
  to: "to@example.com",
  from: "from@example.com",
  subject: "Test Subject",
  body: "Test Body"
)

puts mail.send_mail