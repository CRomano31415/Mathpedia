source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.2'

group :production do
   # Use pg as the production database for Active Record
   gem 'pg'
end

group :development do
  # Use sqlite3 as the development database for Active Record
   gem 'sqlite3'
   gem 'web-console', '~> 2.0'
end

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

gem 'thor', '0.20.0'

#Use Devise for authentication
gem 'devise'
gem 'figaro', '1.0'
gem 'bootstrap-sass'

#group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
 # gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  #gem 'capybara', '~> 2.13'
  #gem 'selenium-webdriver'
#end

group :development do
     gem 'listen', '~> 3.0.5'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
#gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  gem 'rspec-rails', '~>3.0'
  gem 'rails-controller-testing'
end