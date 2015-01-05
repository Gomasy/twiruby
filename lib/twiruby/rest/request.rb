require "json"
require "uri"

require "twiruby/request"

module TwiRuby
  module REST
    BASE_URL = URI.parse("https://api.twitter.com")

    class Request < TwiRuby::Request
      def initialize(tokens, url = BASE_URL)
        super
      end

      def request(req, body = nil, &blk)
        res = @https.request(req, body)
        res.code == "200" ? JSON.parse(res.body) : fail(Error.type(res.code), Error.parse_message(res))
      end
    end
  end
end
