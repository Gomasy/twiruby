module TwiRuby
  class Client
    attr_accessor :consumer_key, :consumer_secret, :access_token, :access_token_secret

    def initialize(options = {})
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
      yield(self) if block_given?
    end

    def tokens
      {
        consumer_key: consumer_key,
        consumer_secret: consumer_secret,
        access_token: access_token,
        access_token_secret: access_token_secret
      }
    end

    def consumer_token?
      !!(!consumer_key.nil? && !consumer_secret.nil?)
    end

    def oauth_token?
      !!(!access_token.nil? && !access_token_secret.nil?)
    end
  end
end
