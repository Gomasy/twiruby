module TwiRuby
  module REST
    module Followers
      # Returns a cursored collection of user IDs for every user following the specified user.
      #
      # @see https://dev.twitter.com/rest/reference/get/followers/ids
      # @param options [Hash]
      def followers_ids(options = {})
        @req.get("/1.1/followers/ids.json", options)
      end

      # Returns a cursored collection of user objects for every user the specified user is following (otherwise known as their “friends”).
      #
      # @see https://dev.twitter.com/rest/reference/get/friends/list
      # @param options [Hash]
      def followers_list(options = {})
        @req.get("/1.1/followers/list.json", options)
      end
    end
  end
end
