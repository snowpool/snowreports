require 'faraday'

module Snowreports
  class Fetcher
    BASE_PATH = "https://www.snowhq.com/"

    class << self
      attr_accessor :user, :pass
    end

    def self.fetch(path:)
      conn.get(path + "/xml")
    end

    def self.conn
      @conn ||= begin
        conn = Faraday.new(url: BASE_PATH)
        user = user || ENV["SNOW_USER"]
        pass = pass || ENV["SNOW_PASS"]

        raise "You must supply a username and password for API access" unless user && pass

        conn.basic_auth(user, pass)
        conn
      end
    end
  end
end
