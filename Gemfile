source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails"

gem 'bcrypt'
gem 'bootstrap-sass'
gem 'bootstrap-will_paginate'
gem 'faker'
gem 'newrelic_rpm'
gem "sassc-rails"
gem "sprockets-rails"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "puma"
gem "bootsnap", require: false
gem 'will_paginate'

group :development, :test do
  gem "sqlite3", "1.4.2"
  gem "debug",   "1.4.0", platforms: %i[ mri mingw x64_mingw ]
  gem 'byebug'
end

group :development do
  gem 'rails-erd'
  gem "web-console", "4.2.0"
end

group :test do
  gem "capybara",                 "3.36.0"
  gem "selenium-webdriver",       "4.1.0"
  gem "webdrivers",               "5.0.0"
  gem "rails-controller-testing", "1.0.5"
  gem "minitest",                 "5.15.0"
  gem "minitest-reporters",       "1.5.0"
  gem "guard",                    "2.18.0"
  gem "guard-minitest",           "2.4.6"
  gem 'guard-rails', '~> 0.8.1'
  gem 'simplecov'
end

group :production do
  gem "pg", "1.3.3"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem.
# Uncomment the following line if you're running Rails
# on a native Windows system:
# gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
