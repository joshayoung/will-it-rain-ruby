require "mail"

class Email
  ATTRIBUTES = %i(host to from subject body).freeze
  attr_accessor(*ATTRIBUTES)

  def initialize(host: nil, to: nil, from: nil, subject:, body:)
    @host = host || ENV["HOST"]
    @to = to || ENV["TO"]
    @from = from || ENV["FROM"]
    @subject = subject
    @body = body
  end

  def email_message
    <<EMAIL
    From: <"#{from}">
    To: <"#{to}">
    MIME-Version: 1.0
    Content-type: text/html
    Subject: Weather Notification
    <h1>#{subject}</h1>
    <p>#{body}</p>
EMAIL
  end

  def send_mail
    mail = Mail.new
    mail.body = body
    mail.from = from
    mail.to = to
    mail.subject = subject
    mail.deliver!
  rescue StandardError => e
    e.message
  end
end
