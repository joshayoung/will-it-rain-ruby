require_relative "../lib/email.rb"

include Mail::Matchers

RSpec.describe Email do
  before(:each) do
    @email = Email.new(
      subject: "Test Subject",
      body: "Test Body"
    )
    Mail::TestMailer.deliveries.clear
    @send_mail = @email.send_mail
  end

  describe "#send" do
    it "uses the correct environmental variables for host, from, to" do
      expect(@email.host).to eq("localhost")
      expect(@email.from).to eq("from@example.com")
      expect(@email.to).to eq("to@example.com")
    end

    it "outputs the correct email format" do
      email_message = @email.email_message

      expect(email_message).to eq("    From: <\"from@example.com\">\n    To: <\"to@example.com\">\n    MIME-Version: 1.0\n    Content-type: text/html\n    Subject: Weather Notification\n    <h1>Test Subject</h1>\n    <p>\Test Body\</p>\n")
    end

    it "sends an email correctly" do
      expect(@send_mail).to have_sent_email
    end

    it "sends email from the correct address" do
      expect(@send_mail).to have_sent_email.from(@email.from)
    end

    it "sends email to the correct address" do
      expect(@send_mail).to have_sent_email.to(@email.to)
    end

    it "sends email with the correct subject line" do
      expect(@send_mail).to have_sent_email.with_subject("Test Subject")
    end

    it "sends email with the correct body text" do
      expect(@send_mail).to have_sent_email.with_body("Test Body")
    end

    it "does not send any attachements" do
      expect(@send_mail).to have_sent_email.with_no_attachments
    end

    it "catches any exceptions and returns the message" do
      mail = instance_double(
        "Mail::Message",
        :body= => "test",
        :from= => "test",
        :to= => "test",
        :subject= => "test"
      )
      error = "error from delivery"
      allow(Mail).to receive(:new).and_return(mail)
      allow(mail).to receive(:deliver!).and_raise(Exception, error)

      expect(@email.send_mail).to eq(error)
    end
  end
end
