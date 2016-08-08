source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'

gem 'pg'

# SEO pack
gem 'sitemap_generator'
gem 'meta-tags', require: 'meta_tags'

gem 'nested_form', git: 'git://github.com/BenZhang/nested_form.git'

gem 'haml-rails'

gem 'font-awesome-rails'
gem 'html5-rails'
gem 'fancybox2-rails'

gem 'sass-rails', '~> 4.0.3'
gem 'compass-rails'
gem 'compass-h5bp'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer',  platforms: :ruby
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem 'bootstrap-sass', '~> 3.0.3.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'         

gem 'devise', '~> 3.4.1'
gem 'paperclip'
gem 'cancan'
gem 'exception_notification', '~> 4.0.1'

#pagination
gem 'kaminari'
gem 'bootstrap-kaminari-views'
gem 'simple_form'
gem 'au_state_select', '~> 1.1'

#ancestry
gem 'ancestry'

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'simplecov'
  gem "factory_girl_rails", "~> 4.0"
end

gem 'ckeditor'

# keep track of views count
gem 'views_count', '0.0.3'

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
gem 'unicorn'

gem 'jquery-datetimepicker-rails'


group :development do
  gem 'spring'
  gem 'rvm-capistrano'
  gem 'capistrano', '2.15.5'
  gem 'capistrano-ext'
  gem "capistrano-db-tasks", require: false, github: 'gkopylov/capistrano-db-tasks', ref: 'f3949cd'
  gem 'quiet_assets'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'pixelforce_cms', '~> 2.4'
end

# Use debugger
# gem 'debugger', group: [:development, :test]
