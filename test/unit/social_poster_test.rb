require 'test_helper'
require 'social_poster'

class SocialPosterTest < Test::Unit::TestCase
  include SocialPoster::Poster


  should "have a write method" do
    assert_equal true, SocialPoster.respond_to?(:write)
  end

  should "have write to lj, vk, fb and twitter" do
    [Facebook, LiveJournal, Twitter, Vkontakte].each{|network| network.any_instance.stubs(:write).returns(true)}
    %w(lj fb vk twitter).each{|network| SocialPoster::write(network, 'test', 'test')}
  end

end