# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby "2.7.1"

gem "dotenv"
gem "faraday"
gem "faraday_middleware"
gem "mail"
gem "rspec"
gem "webmock"

gem "simplecov", require: false, group: :test

group :test, :development do
  gem "ramsey_cop"
  gem "pry-byebug"
end
