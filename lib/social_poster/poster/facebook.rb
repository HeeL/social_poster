require 'fb_graph'

module SocialPoster
  module Poster
    
    class Facebook
      include SocialPoster::Helper

      def initialize(options)
        @options = options
      end

      def write(text, title)
        FbGraph::User.me(config_key :access_token).feed!({message: text}.merge(@options))
      end
    end

  end
end