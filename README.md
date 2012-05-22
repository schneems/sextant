# Sextant

Helps you find your routes on a long Journey on Rails

## What

Show routes in your Rails app. Visit `http://localhost:3000/rails/routes` and you'll see an output similar to `rake routes`

![Sextant Gem](http://media.tumblr.com/tumblr_m42lwz86aB1qevexf.png)


## Why?

Running `rake routes` is slow and painful, mostly due to the time to initialize rails. Since you likely have your rails server booted, you can save this time by rendering the routes in a web request. You can only develop as quick as your tools will allow, so speeding up your tools speeds your development. Sextant allows you to quickly see your routes.


## Install

Add this to your Gemfile

```ruby
  gem 'sextant'
```

Then run `bundle install` and you're ready to start


## Use

Visit `/rails/routes` in your app and you'll see your routes. It's that simple.

![Screenshot]()

Don't worry you can only see this info in development

## About

If you have a question file an issue or find me on the Twitters [@schneems](http://twitter.com/schneems).

This project rocks and uses MIT-LICENSE.