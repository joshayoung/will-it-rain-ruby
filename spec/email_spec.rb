require_relative "../lib/email.rb"

RSpec.describe Email do
  before(:each) do
    @email = Email.new(
      subject: "Test Subject",
      body: "Test Body"
    )
  end

  describe "#send" do
    it "uses the correct environmental variables for host, from, to" do
      expect(@email.host).to eq("localhost")
      expect(@email.from).to eq("from@example.com")
      expect(@email.to).to eq("to@example.com")
    end

    it "outputs the correct eemail format" do
      eemail_message = @email.email_message

      expect(eemail_message).to eq("    From: <\"from@example.com\">\n    To: <\"to@example.com\">\n    MIME-Version: 1.0\n    Content-type: text/html\n    Subject: Weather Notification\n    <h1>Test Subject</h1>\n    <p>\Test Body\</p>\n")
    end

    it "sends the eemail" do
      sender = double
      allow(Net::SMTP).to receive(:start).and_return(sender)
      allow(sender).to receive(:send_message)

      expect(@email.send_mail).to be_truthy
    end

    it "returns an error for localhost" do
      expect(@email.send_mail).to eq("Connection refused - connect(2) for \"localhost\" port 25")
    end
  end
end
