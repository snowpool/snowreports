require_relative './snowreport'
require 'nokogiri'

module Snowreports
  class Builder
    def self.build(xml:, snowpool_id:)
      parsed = Nokogiri.parse(xml)
      last_updated_date = parsed.xpath("//skiareas/skiarea/date").text
      last_updated_time = parsed.xpath("//skiareas/skiarea/time").text.sub(/:\d+$/,"")
      weather_detail = parsed.xpath("//skiareas/skiarea/weather/detail").text
      road_node = parsed.xpath('//facilitytype/name[contains(text(), "Road")]').first.parent
      road_status = road_node.xpath(".//status/label").text
      road_brief = road_node.xpath(".//brief").text
      snowreports_field_id = parsed.xpath("//skiarea/id").text
      snowreports_field_name = parsed.xpath("//skiarea/name").text
      information = parsed.xpath("//information").text
      snow_min = parsed.xpath("//snow/mindepth").text
      snow_base = parsed.xpath("//snow/base").text
      mountain_status = parsed.xpath("//skiarea/status/label").text

      Snowreport.new(updated_date: last_updated_date,
                     updated_time: last_updated_time,
                     road_status: road_status,
                     road_brief: road_brief,
                     name: snowreports_field_name,
                     id: snowreports_field_id,
                     weather_detail: weather_detail,
                     snow_min: snow_min,
                     snow_base: snow_base,
                     information: information,
                     snowpool_id: snowpool_id,
                     mountain_status: mountain_status,
                     )
    end
  end
end
