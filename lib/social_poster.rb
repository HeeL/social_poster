#!/usr/bin/env ruby

$:.push File.expand_path("../lib", __FILE__)

require_relative 'social_poster/version'
require_relative 'social_poster/poster/facebook'
require_relative 'social_poster/poster/twitter'
require_relative 'social_poster/poster/live_journal'
require_relative 'social_poster/poster/vkontakte'

module SocialPoster

  @@vk = @@fb = @@lj = @@twitter = {}

  def self.setup
    yield self
  end

  def self.get_config(name)
    { 
      fb: @@fb,
      vk: @@vk,
      lj: @@lj,
      twitter: @@twitter
    }[name.to_sym]
  end

  def self.vk= value
    @@vk = value
  end

  def self.fb= value
    @@fb = value
  end

  def self.lj= value
    @@lj = value
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

