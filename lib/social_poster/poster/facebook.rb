require 'fb_graph'

module SocialPoster
  module Poster
    
    class Facebook
      def write(text, title)
        FbGraph::User.me(access_token).feed!(message: text)
      end

      def access_token
        SocialPoster.get_config(:fb)[:access_token]
      end
    end

  end
end