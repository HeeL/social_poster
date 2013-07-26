require 'test_helper'
require 'social_poster'

class SocialPosterTest < Test::Unit::TestCase
  include SocialPoster::Poster


  should "have a write method" do
    assert_equal true, SocialPoster.respond_to?(:write)
  end

  should "post to fb and twitter" do
    [Facebook, Twitter, Vkontakte].each do |network|
      network.any_instance.stubs(:write).returns(true)
    end
    %w(fb twitter vk).each{|network| SocialPoster::write(network, 'test', 'test')}
  end

end