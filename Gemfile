source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2'

group :production do
   gem 'pg'
end

group :development do
   gem 'sqlite3'
   gem 'web-console', '~> 2.0'
   gem 'listen', '~> 3.0.5'
end

group :development, :test do
  gem 'rspec-rails', '~>3.0'
  gem 'rails-controller-testing'
end

gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'thor', '0.20.0'

gem 'devise'
gem 'figaro', '1.0'
gem 'bootstrap-sass'
gem 'pundit'
