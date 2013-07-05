$:.push File.expand_path("../lib", __FILE__)

require 'social_poster/version'
require 'social_poster/poster/facebook'
require 'social_poster/poster/twitter'
require 'social_poster/poster/live_journal'
require 'social_poster/poster/vkontakte'

module SocialPoster

  @@vk = @@facebook = @@livejournal = @@twitter = {}

  def self.setup
    yield self
  end

  def self.vk= value
    @@vk = value
  end

  def self.facebook= value
    @@facebook = value
  end

  def self.livejournal= value
    @@livejournal = value
  end

  def self.twitter= value
    @@twitter = value
  end

  def self.write(network, text, title = '')
    site = case network.to_sym
    when :fb
      site = Poster::Facebook.new
    when :twitter
      site = Poster::Twitter.new
    when :lj
      site = Poster::LiveJournal.new
    when :vk
      site = Poster::Vkontakte.new
    else
      raise "Unknown network #{network}"
    end
    site.write(text, title)
  end

end
