module SocialPoster
  module Poster
    
    class Twitter
      def write(text, title)
        puts "#{title}: #{text}"
      end
    end

  end
end