Description
-----------
SocialPoster is a gem that allows you easily post to different social networks. Supported networks are:
* Facebook
* Twitter
* Livejournal


Configuration
-------------

Can work with or without Rails. Here is an example of usage when you want to use it with Ruby on Rails framework.
First you need to create a configuration file config/initializers/social_poster.rb:

```ruby
SocialPoster.setup do |config|
  config.fb = {
    access_token: 'ACCESS_TOKEN'
  }

  config.twitter = {
    consumer_key:       'CONSUMER_KEY',
    consumer_secret:    'CONSUMER_SECRET',
    oauth_token:        'OAUTH_TOKEN',
    oauth_token_secret: 'OAUTH_TOKEN_SECRET',

  }

  config.lj = {
    user:     'USER',
    password: 'PASSWORD'
  }
end

```


Usage
-----

In controller or model you can post to different social networks like this:

```ruby
SocialPoster.write(:fb, 'Something that will appear on your Facebook Wall...')

SocialPoster.write(:twitter, 'Tweet tweet tweet')

SocialPoster.write(:lj, 'A long text of the post...', 'A short title of it')
```


Contribute
----------

* fork
* add changes
* run tests:  
    ruby -I test test/*/*
* create a pull request

