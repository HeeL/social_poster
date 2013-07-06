module SocialPoster
  module Poster
    
    class Vkontakte
      include SocialPoster::Helper

      def write(text, title)
        puts "#{title}: #{text}"
      end
    end

  end
end