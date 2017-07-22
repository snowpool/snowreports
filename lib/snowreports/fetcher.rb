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
        conn.basic_auth(user || ENV["SNOW_USER"], pass || ENV["SNOW_PASS"])
        conn
      end
    end
  end
end
