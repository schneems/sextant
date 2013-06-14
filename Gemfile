source "https://rubygems.org"

rails_version = ENV["RAILS_VERSION"] || "default"

rails = case rails_version
when "master"
  {github: "rails/rails"}
when "default"
  ">= 3.2"
else
  "~> #{rails_version}"
end

gem "rails", rails


group :development, :test do
  gem 'rake'
  gem 'jeweler',  "~> 1.6.4"
  gem "capybara", ">= 0.4.0"
  gem 'poltergeist'
  gem "sqlite3"
  gem "launchy",  "~> 2.1.0"
end

platforms :mri_18 do
  group :development, :test do
    gem "rcov"
  end
end

platforms :mri_19 do
  group :development, :test do
    gem "simplecov"
  end
end

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19'
