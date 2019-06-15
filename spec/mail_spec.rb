require_relative "../lib/mail.rb"

RSpec.describe Mail do
  before(:each) do
    @mail = Mail.new(
      subject: "Test Subject",
      body: "Test Body"
    )
  end

  describe "#send" do
    it "uses the correct environmental variables for host, from, to" do
      expect(@mail.host).to eq("localhost")
      expect(@mail.from).to eq("from@example.com")
      expect(@mail.to).to eq("to@example.com")
    end

    it "outputs the correct email format" do
      email_message = @mail.email_message

      expect(email_message).to eq("    From: <\"from@example.com\">\n    To: <\"to@example.com\">\n    MIME-Version: 1.0\n    Content-type: text/html\n    Subject: Weather Notification\n    <h1>Test Subject</h1>\n    <p>\Test Body\</p>\n")
    end

    it "sends the email" do
      sender = double
      allow(Net::SMTP).to receive(:start).and_return(sender)
      allow(sender).to receive(:send_message)

      expect(@mail.send_mail).to be_truthy
    end

    it "returns an error for localhost" do
      expect(@mail.send_mail).to eq("Connection refused - connect(2) for \"localhost\" port 25")
    end
  end
end
