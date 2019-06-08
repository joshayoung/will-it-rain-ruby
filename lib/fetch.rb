require "faraday"
require "faraday_middleware"
require "uri"
require "json"
require 'dotenv/load'

class Fetch
  def self.retrieve(url)
    url = URI.parse(url)
    connection = Faraday.new(url: "#{url.scheme}://#{url.host}")
    JSON.parse(connection.get(url.path).body)
  end
end