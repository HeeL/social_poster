require 'fb_graph'

module SocialPoster
  module Poster
    
    class Facebook
      include SocialPoster::Helper

      def initialize(options)
        @options = options
      end

      def write(text, title)
        if @options[:id]
          id = @options.delete :id
          FbGraph::User.new(id).feed!({message: text}.merge(@options).merge(access_token: (config_key :access_token)))
        else
          FbGraph::User.me(config_key :access_token).feed!({message: text}.merge(@options))
        end
      end
    end

  end
end


