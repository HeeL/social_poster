require 'twitter'

module SocialPoster
  module Poster
    
    class Twitter
      include SocialPoster::Helper

      def initialize
        ::Twitter.configure do |config|
          config.consumer_key       = config_key :consumer_key
          config.consumer_secret    = config_key :consumer_secret
          config.oauth_token        = config_key :oauth_token
          config.oauth_token_secret = config_key :oauth_token_secret
        end
      end

      def write(text, title)
        ::Twitter.update(text)
      end
    end

  end
end