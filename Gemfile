source 'https://rubygems.org'

ruby '2.1.7'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'
# Use sqlite3 as the database for Active Record
gem 'sqlite3',  group: [:development, :test]

#Use postgresql as database for production
group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# Use Chrome add-on RailsPanel for development
group :development do
  gem 'meta_request'
end

# Use SCSS for stylesheets
gem 'sass-rails', '4.0.3'
# Use bootstrap lib for styles
gem 'bootstrap-sass', '3.3.1'
# Use Font Awesome lib for icons
gem 'font-awesome-sass', '4.2.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# UNCOMMENTED TO NOT INTERFERE WITH STRIPE
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '0.4.0',          group: :doc

# Speeds up development by keeping application running in background
gem 'spring',          group: :development

# Use to manage user auth
gem 'devise', '3.4.1'

# Use to manage payments
gem 'stripe', '1.16.1'

# Use to hide secret keys
gem 'figaro', '1.0.0'

# Use paperclip for image uploads
gem 'paperclip', '4.3'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]
