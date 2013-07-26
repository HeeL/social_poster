#!/usr/bin/env ruby

$:.push File.expand_path("../lib", __FILE__)

require_relative 'social_poster/version'
require_relative 'social_poster/helper'
[:vkontakte, :facebook, :live_journal, :twitter].each do |p|
  require_relative "social_poster/poster/#{p}"
end

module SocialPoster

  @@fb = @@lj = @@twitter = @@vk = {}

  def self.setup
    yield self
  end

  def self.get_config(name)
    { 
      facebook:    @@fb,
      livejournal: @@lj,
      vkontakte:   @@vk,
      twitter:     @@twitter
    }[name.to_sym]
  end

  def self.fb= value
    @@fb = value
  end

  def self.lj= value
    @@lj = value
  end

  def self.vk= value
    @@vk = value
  end

  def self.twitter= value
    @@twitter = value
  end

  def self.write(network, text, title = '')
    site = case network.to_sym
    when :fb
      site = Poster::Facebook.new
    when :vk
      site = Poster::Vkontakte.new
    when :twitter
      site = Poster::Twitter.new
    when :lj
      site = Poster::LiveJournal.new
    else
      raise "Unknown network #{network}"
    end
    site.write(text, title)
  end

end
