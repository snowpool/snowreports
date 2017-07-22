module Snowreports
  class RequiredKeywordStruct < Struct
    def initialize(**kwargs)
      super(*members.map{|k| kwargs.fetch(k) })
    end
  end

  Snowreport = RequiredKeywordStruct.new(
    :mountain_status,
    :updated_date,
    :updated_time,
    :road_status,
    :road_brief,
    :name,
    :id,
    :weather_detail,
    :snow_base,
    :snow_min,
    :information,
    :field_id
  )
end
