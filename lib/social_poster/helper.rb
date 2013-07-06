module SocialPoster
  module Helper
    def config_key(key)
      network = self.class.to_s.split('::').last.downcase.to_sym
      SocialPoster.get_config(network)[key.to_sym]
    end
  end
end