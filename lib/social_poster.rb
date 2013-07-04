require "social_poster/version"

module SocialPoster

  @@vk = {}
  @@facebook = {}
  @@livejournal = {}
  @@twitter = {}

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

end
