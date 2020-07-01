# RouterExtension

useful extension for rails routes

## Usage

### partial routes

you can partialize routes files.

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

### subdomain

```ruby
Rails.application.routes.draw do

subdomain ENV['API_SUBDOMAIN'] do
  namespace :api do
  end
end
```

if `ENV['API_SUBDOMAIN']` present, it means `constrains subdomain: ENV['API_SUBDOMAIN'] do`,
but if not presents, just ignore this line.

subdomain configuration becomes effective only when `API_SUBDOMAIN` given,
so you can easyly ignore when development.

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
