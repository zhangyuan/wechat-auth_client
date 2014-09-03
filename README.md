# Wechat::AuthClient

[![Build Status](https://travis-ci.org/zhangyuan/wechat-auth_client.svg?branch=master)](https://travis-ci.org/zhangyuan/wechat-auth_client)

## Installation

Add this line to your application's Gemfile:

    gem 'wechat-auth_client'

And then execute:

    $ bundle

## Usage

> `REDIRECT_URL` should be configured in WeChat management system and route to callback action

```ruby
class SessionsController < ApplicationController
  def auth
    redirect_to auth_client.authorize_url(REDIRECT_URL, state)
  end

  def callback
    if state == params[:state]
      access_token = auth_client.get_token(params[:code])
      # do something with access_token. 
      # for example, call access_token.openid to get openid
    end
  end

  private

  def auth_client
    @auth_client ||= Wechat::AuthClient.new(APP_ID, APP_SECRET)
  end
  
  def state
    session[:state] ||= SecureRandom.hex(3)
  end
end
```

## Contributing

1. Fork it ( https://github.com/zhangyuan/wechat-auth_client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
