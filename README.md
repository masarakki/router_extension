# RouterExtension

useful extension for rails routes

## Usage

### partial routes

You can partialize routes files.

config/routes/admin.rb

```ruby
namespace :admin do
  root to: 'dashboard#index'
end
```

config/routes.rb

```
Rails.application.routes.draw do
  draw :admin

  resources :users
  ...
  ...

end
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'router_extension'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install router_extension
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
