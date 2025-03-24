source "https://rubygems.org"

# Specify Ruby version
ruby ">= 2.7.0"

gemspec

group :development, :test do
  # Testing
  gem "autotest", "~> 5.0"
  gem "rspec", "~> 3.12"
  gem "webmock", "~> 3.19"

  # HTTP client
  gem "faraday-retry", "~> 2.2"

  # Development tools
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "rake", "~> 13.0"

  # Code quality
  gem "rubocop", "~> 1.57"
  gem "rubocop-rails", "~> 2.24"
  gem "rubocop-rspec", "~> 3.5"
end
