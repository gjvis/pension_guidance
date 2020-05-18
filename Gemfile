source 'https://rubygems.org'

ruby IO.read('.ruby-version').strip

# force Bundler to use HTTPS for github repos
git_source(:github) { |repo_name| "https://github.com/#{repo_name}.git" }

gem 'autoprefixer-rails'
gem 'booking_locations'
gem 'bugsnag'
gem 'canonical-rails', '>= 0.1.0'
gem 'faraday'
gem 'faraday-conductivity'
gem 'faraday_middleware'
gem 'foreman'
gem 'gaffe', '>= 1.0.2'
gem 'govspeak', '~> 3.2'
gem 'govuk_elements_rails', '>= 2.2.1'
gem 'govuk_frontend_toolkit', '>= 5.0.2'
gem 'govuk_template', '>= 0.19.2'
gem 'humanize'
gem 'inline_svg'
gem 'newrelic_rpm'
gem 'nokogiri'
gem 'output-templates', '~> 4.4.3', github: 'guidance-guarantee-programme/output-templates'
gem 'phoner'
gem 'princely'
gem 'postcodes_io'
gem 'puma'
gem 'rack-contrib'
gem 'rails', '5.0.1'
gem 'redis'
gem 'rgeo'
gem 'rgeo-geojson'
gem 'rubytree'
gem 'sassc-rails', '>= 1.3.0'
gem 'sprockets-es6'
gem 'sprockets-rails', '~> 3.2', '>= 3.2.0'
gem 'uglifier', '>= 1.3.0'
gem 'uk_postcode'
gem 'utf8-cleaner'
gem 'zendesk_api'

group :development, :test do
  gem 'jasmine-jquery-rails'
  gem 'jasmine-rails', '>= 0.14.1'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.5', '>= 3.5.0'
end

group :development do
  gem 'rubocop', require: false
end

group :test do
  gem 'cucumber-rails', '>= 1.4.3', require: false
  gem 'fakeredis'
  gem 'launchy'
  gem 'pdf-inspector', require: 'pdf/inspector'
  gem 'poltergeist'
  gem 'phantomjs-binaries'
  gem 'scss-lint', '~> 0.30'
  gem 'shoulda-matchers'
  gem 'site_prism'
  gem 'timecop'
  gem 'vcr'
  gem 'webmock'
  gem 'wraith'
end

group :staging, :production do
  gem 'rails_12factor'
end
