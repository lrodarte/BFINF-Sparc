source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use sqlite3 as the database for Active Record
gem 'puma'
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'json', github: 'flori/json', branch: 'v1.8'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'rails_email_preview'
gem 'carrierwave'
gem 'fog'
gem 'unf'
gem 'react-rails', '~> 1.6.0'
gem 'mini_magick'
#other 
gem 'simple_form'
gem 'activeadmin', git: 'https://github.com/gregbell/active_admin.git'
gem "devise"
gem "ckeditor"
gem 'annotate'
gem 'font-awesome-sass', '~> 4.2.0'
gem 'metamagic'
gem 'friendly_id'
gem "ice_cube"
gem "cocoon"
gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'
gem 'paypal-sdk-adaptivepayments'
gem 'seed_dump'
gem "sidekiq"
gem 'newrelic_rpm'
gem 'pg_search'

#omniauth 
gem 'omniauth'
gem 'omniauth-twitter'
gem "omniauth-google-oauth2"
gem 'omniauth-facebook'
#background workers 
gem 'whenever', :require => false
gem 'sinatra', require: false

#auto-prefixer gem: https://github.com/ai/autoprefixer-rails
gem "autoprefixer-rails"

#security 
gem 'brakeman'
gem 'barkeep'
#bugtracking
gem "bugsnag"

group :production do 
	gem 'rails_12factor'
	gem 'heroku-deflater'
	gem 'dalli'
end

group :development do
 gem 'better_errors'
 gem 'guard-livereload'
end

group :test do
  gem 'faker'
  gem "factory_girl_rails"
  gem "capybara"
  gem "guard-rspec"
  gem 'shoulda-matchers'
  gem "rb-fsevent"
  gem 'poltergeist'
end



group :test, :development do
  gem 'rspec-rails'
  gem 'guard'
  gem "pry"
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

