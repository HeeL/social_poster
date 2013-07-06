require 'vk-ruby'

module SocialPoster
  module Poster
    
    class Vkontakte
      include SocialPoster::Helper

      def initialize
        @session = ::VK::Session.new config_key(:app_id), config_key(:api_secret)
      end

      def write(text, title)
        puts "#{title}: #{text}"
      end
    end

  end
end