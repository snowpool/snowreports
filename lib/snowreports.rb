require_relative "snowreports/version"
require_relative "snowreports/builder"
require_relative "snowreports/endpoint"
require_relative "snowreports/fetcher"
require 'json'

module Snowreports
  def self.fetch(ski_field)
    endpoint = Endpoint.all.fetch(ski_field)
    response = Fetcher.fetch(path: endpoint.path)
    Builder.build(xml: response.body, snowpool_id: endpoint.id)
  end

  def self.all
    Endpoint.all.first(2).each_with_object([]) do |(_field_name, endpoint), acc|
      response = Fetcher.fetch(path: endpoint.path)
      acc << Builder.build(xml: response.body, snowpool_id: endpoint.id)
    end
  end
end
