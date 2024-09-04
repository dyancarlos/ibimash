source "https://rubygems.org"

gem "rails", "~> 7.2.1"
gem "sprockets-rails"
gem "sqlite3", ">= 1.4"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem "bootstrap", "~> 5.3.3"
gem "sassc-rails"
# gem "turbo-rails"

group :tools do
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails-omakase", require: false
  gem "rubocop-rspec", require: false
end

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails", "~> 6.0.2"
  gem "brakeman", require: false
  gem "rubocop-rails", require: false
end

group :development do
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
