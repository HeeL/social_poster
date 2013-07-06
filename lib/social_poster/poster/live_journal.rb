require 'livejournal'

module SocialPoster
  module Poster
    
    class LiveJournal
      include SocialPoster::Helper

      def initialize
        @user = ::LiveJournal::User.new(config_key(:user), config_key(:password))
        ::LiveJournal::Request::Login.new(@user).run
      end

      def write(text, title)
        lj = ::LiveJournal::Entry.new
        lj.subject = title
        lj.event = text
        ::LiveJournal::Request::PostEvent.new(@user, lj).run
      end
    end

  end
end