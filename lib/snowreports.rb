require_relative "snowreports/version"
require_relative "snowreports/builder"
require_relative "snowreports/endpoint"
require_relative "snowreports/fetcher"

module Snowreports
  def self.fetch(ski_field)
    endpoint = Endpoint.all.fetch(ski_field)
    response = Fetcher.fetch(path: endpoint.path)
    Builder.build(xml: response.body, snowpool_id: endpoint.id)
  end

  def self.all(ski_field)
  end
end
