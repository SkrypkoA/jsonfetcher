module Jsonfetcher
  class Client
    attr_accessor :url
    RESOURCE = 'http://jsonplaceholder.typicode.com/posts'

    def initialize(url = URI(RESOURCE))
      @url = url
    end

    def posts(user_id=nil)
      url.query = URI.encode_www_form(userId: user_id) if user_id
      response = Net::HTTP.get_response(url)
      if response.code == '200'
        JSON.parse(response.body).map { |post| Post.new(*post.values) }
      else
        response.body
      end
    end
  end
end