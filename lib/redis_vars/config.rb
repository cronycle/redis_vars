module RedisVars
  class Config
    def url
      ENV['REDIS_VARS_URL']
    end

    def app_key
      ENV['APP_KEY'] || pwd
    end

    def pwd
      Dir.pwd.split('/').last
    end
  end
end
