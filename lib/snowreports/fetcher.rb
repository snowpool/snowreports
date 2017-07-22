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
        snow_user = user || ENV["SNOW_USER"]
        snow_pass = pass || ENV["SNOW_PASS"]

        raise "You must supply a username and password for API access" unless snow_user && snow_pass

        conn.basic_auth(snow_user, snow_pass)
        conn
      end
    end
  end
end
