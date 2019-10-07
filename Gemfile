source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "~> 6.0.0"
# Use sqlite3 as the database for Active Record
gem "pg", "~> 1.1"
# Use Puma as the app server
gem "puma", "~> 4.2"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem "jbuilder", "~> 2.7"
# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

gem "graphiti"
gem "graphiti-rails"
gem "vandal_ui"
gem "kaminari", "~> 1.1"
gem "responders", "~> 3.0"
gem "bootsnap", ">= 1.4.2", require: false
gem "rack-cors"
gem "devise-jwt", "~> 0.5.9"
gem "devise"
# gem "graphiti_docs", path: "lib/graphiti_docs"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "spring-commands-rspec"
end

group :development, :test do
  gem "rspec-rails", "~> 4.0.0beta2"
  gem "factory_bot_rails", ">= 5.1.1"
  gem "faker", "~> 2.5"
  gem "graphiti_spec_helpers"
  gem "standard"
  gem "pry-rails"
  gem "pry-byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "dotenv-rails"
end

group :test do
  gem "database_cleaner", "~> 1.7"
end
