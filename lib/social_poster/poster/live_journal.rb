module SocialPoster
  module Poster
    
    class LiveJournal
      def write(text, title)
        puts "#{title}: #{text}"
      end
    end

  end
end