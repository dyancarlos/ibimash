source "https://rubygems.org"

gem "rails", "7.0.4.2"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "stimulus-rails"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem "bootstrap", "~> 5.3.3"
gem "sassc-rails"
gem "turbo-rails"
gem "factory_bot_rails"
gem "rollbar"

group :tools do
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails-omakase", require: false
  gem "rubocop-rspec", require: false
end

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "faker"
  gem "rspec-rails", "~> 6.0.2"
  gem "brakeman", require: false
  gem "rubocop-rails", require: false
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
