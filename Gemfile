source 'https://rubygems.org'

gem 'hydra', '~> 7.1.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '5.0.0'
gem 'bootstrap-sass'
gem 'compass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-slick-rails'

# For simple static pages
gem 'high_voltage', '~> 2.2.1'

# For friendly permalinks
gem 'friendly_id'

# For breadcrumbs
gem 'breadcrumbs_on_rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem "devise"
gem "devise-guests", "~> 0.3"
gem "colorize"
gem "blacklight_advanced_search"
gem "sitemap_generator"
gem "whenever", :require => false
gem "god"

group :test do
  gem "rspec-rails"
  gem "vcr"
  gem "webmock"
  gem "factory_girl_rails", "~> 4.0"
  gem "database_cleaner"
  gem 'simplecov', :require => false
end

group :development, :test do
  gem "jettywrapper"
  gem "capybara"
  gem "byebug"
  gem "pry-rails"
  gem "foreman"
  gem "guard-rspec"
end
