# Sextant [![Build Status](https://travis-ci.org/schneems/sextant.png?branch=master)](https://travis-ci.org/schneems/sextant)


Helps you find your routes on a long Journey on Rails, in Rails apps 3.2+.

![Logo](http://cl.ly/image/0d122q3y0Q17/content.png)


## What

Show routes in your Rails app while working in development. Visit `http://localhost:3000/rails/routes` and you'll see an output similar to `rake routes`

![Sextant Gem](http://cl.ly/image/3A1z290a3l0Z/content.png)


## The Future

The core functionality of Sextant is now [merged into Rails 4.0](https://github.com/rails/rails/commit/8186754097e0cc54a8853f2a5c0d2b3fbf4ae059) under `rails/info/routes`. If you want this functionality in earlier rails use Sextant. I would like to improve that functionality and this gem is a good place to experiment. If you have ideas on functionality you would like, check the issues to make sure it hasn't been suggested before, and then create one, or send me a message [@schneems](http://twitter.com/schneems)

## Why?

Running `rake routes` is slow and painful, mostly due to the time to initialize rails. When you're working in development you likely have your rails server booted, you can save this time by rendering the routes in a web request. You can only develop as quick as your tools will allow, so speeding up your tools speeds your development. Sextant allows you to quickly see your routes.


## Install

Add this to the development group in your Gemfile

```ruby
group :development do
  gem 'sextant'
end
```

Then run `bundle install` and you're ready to start

### Optional for users of catch-all routes

If (and only if) you have catch all routes like `match '*not_found' => 'errors#handle404'
` in your app already, you can add sextant to your routes (config/routes.rb) before the catch-all routes like this.

```ruby
mount_sextant if Rails.env.development?
match '*not_found' => 'errors#handle404'
```


## Use

Visit `/rails/routes` in your app and you'll see your routes. It's that simple.


## About

If you have a question file an issue or find me on the Twitters [@schneems](http://twitter.com/schneems).

This project rocks and uses MIT-LICENSE.
