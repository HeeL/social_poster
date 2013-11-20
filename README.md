Description
-----------
SocialPoster is a gem that allows you easily post to different social networks. Supported networks are:
* Facebook
* Twitter
* Livejournal
* Vkontakte


Installation
-------------

In console: 
```
gem install social_poster
```
or in your Gemfile:
```
gem 'social_poster'
```


Configuration
-------------

Can work with or without Rails. Here is an example of usage when you want to use it with Ruby on Rails framework.
First you need to create a configuration file config/initializers/social_poster.rb:

```ruby
SocialPoster.setup do |config|
  config.fb = {
    access_token: 'ACCESS_TOKEN'
  }

  config.vk = {
    access_token: 'ACCESS_TOKEN'
  }

  config.twitter = {
    consumer_key:       'CONSUMER_KEY',
    consumer_secret:    'CONSUMER_SECRET',
    oauth_token:        'OAUTH_TOKEN',
    oauth_token_secret: 'OAUTH_TOKEN_SECRET'
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
SocialPoster.write(:vk, 'Something that will appear on your Vkontakte Wall...')
SocialPoster.write(:twitter, 'Tweet tweet tweet')
SocialPoster.write(:lj, 'A long text of the post...', 'A short title of it')
```
For Vkontakte API there is a possibility of providing additional options. For instance, for posting on a group wall use this example:
```ruby
SocialPoster.write(:vk, 'Text on the Group Wall...', nil, owner_id: '-GROUP_ID')
```

You can specify extra parameters for Facebook API too. For instance, you can post links, or pictures like this:
```ruby
SocialPoster.write(:fb, 'Text on the Wall...', nil, link: 'http://google.com', picture: 'https://www.google.com/images/srpr/logo11w.png')
```


Contribute
----------

* fork
* add changes
* run tests:  
```
ruby -I test test/*/*
```
* create a pull request

