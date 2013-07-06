require 'fb_graph'

module SocialPoster
  module Poster
    
    class Facebook
      include SocialPoster::Helper

      def write(text, title)
        FbGraph::User.me(config_key :access_token).feed!(message: text)
      end
    end

  end
end