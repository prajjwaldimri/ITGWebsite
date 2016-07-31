source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem "will_paginate_semantic_ui"

#Semantic-UI
gem 'semantic-ui-sass', github: 'doabit/semantic-ui-sass'

#Iconate
source 'https://rails-assets.org' do
  gem 'rails-assets-css-hamburgers'
end

#Font-Awesome

gem 'font-awesome-rails'

gem 'carrierwave'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

#Bower
  gem "bower-rails", "~> 0.10.0"

#Faker
gem 'faker', '~> 1.6.1'
# Use Unicorn as the app server
# gem 'unicorn'

gem 'friendly_id', '~> 5.1.0'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'fog-aws'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
end

group :developent, :production do
  gem 'pg'
end

group :production do
	gem 'rails_12factor',	'0.0.2'
  gem 'heroku-deflater'
end
