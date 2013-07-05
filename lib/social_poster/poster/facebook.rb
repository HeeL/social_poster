module SocialPoster
  module Poster
    
    class Facebook
      def write(text, title)
        puts "#{title}: #{text}"
      end
    end

  end
end