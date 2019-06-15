require_relative "../lib/mail.rb"

RSpec.describe Mail do
  before(:each) do
    points_stub
    forecast_stub
    @mail = Mail.new(
      latitude: "32.7766",
      longitude: "-96.7969"
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

      expect(email_message).to eq("    From: Test From <\"from@example.com\">\n    To: Test To <\"to@example.com\">\n    MIME-Version: 1.0\n    Content-type: text/html\n    Subject: Weather Notification\n    <h1>Current Weather</h1>\n    <p>\"A chance of showers and thunderstorms before 1am. Partly cloudy. Low around 74, with temperatures rising to around 76 overnight. Southeast wind around 5 mph. Chance of precipitation is 30%.\"</p>\n")
    end
  end
end
