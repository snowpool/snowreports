require_relative "snowreports/version"
require_relative "snowreports/builder"
require_relative "snowreports/endpoint"
require_relative "snowreports/fetcher"

module Snowreports
  def self.fetch(ski_field)
    endpoint = Endpoint.all.fetch(ski_field)
    response = Fetcher.fetch(snowhq_id: endpoint.snowhq_id)
    Builder.build(xml: response.body, field_id: endpoint.id)
  end

  def self.all
    Endpoint.all.each_with_object([]) do |(_field_name, endpoint), acc|
      response = Fetcher.fetch(snowhq_id: endpoint.snowhq_id)
      acc << Builder.build(xml: response.body, field_id: endpoint.id)
      acc
    end
  end
end
