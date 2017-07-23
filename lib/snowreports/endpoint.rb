module Snowreports
  class Endpoint
    SnowpoolWrapper = Struct.new(:id, :path)

    def self.all
      @all ||= {
        turoa: SnowpoolWrapper.new(22, "/nz/mt-ruapehu-and-manganui/turoa/turoa-snow-report"),
        whakapapa: SnowpoolWrapper.new(21, "/nz/mt-ruapehu-and-manganui/whakapapa/whakapapa-snow-report"),
        cardrona: SnowpoolWrapper.new(15, "/nz/queenstown-and-wanaka/cardrona/cardrona-snow-report"),
        treble_cone: SnowpoolWrapper.new(7, "/nz/queenstown-and-wanaka/treble-cone/treble-cone-snow-report"),
        remarkables: SnowpoolWrapper.new(6, "/nz/queenstown-and-wanaka/the-remarkables/remarkables-snow-report"),
        coronet_peak: SnowpoolWrapper.new(14, "/nz/queenstown-and-wanaka/coronet-peak/coronet-peak-snow-report"),
        snow_farm: SnowpoolWrapper.new(18, "/nz/queenstown-and-wanaka/snow-farm/snow-farm-snow-report"),
        manganui: SnowpoolWrapper.new(24, "/nz/mt-ruapehu-and-manganui/maunganui-ski-area/manganui-snow-report"),
        rainbow: SnowpoolWrapper.new(20, "/nz/nelson-lakes/rainbow-ski-area/rainbow-snow-report"),
        mt_hutt: SnowpoolWrapper.new(8, "/nz/canterbury/mt-hutt/mt-hutt-snow-report"),
        mt_cheeseman: SnowpoolWrapper.new(3, "/nz/canterbury/mt-cheeseman/mt-cheeseman-snow-report"),
        hanmer_springs: SnowpoolWrapper.new(9, "/nz/canterbury/hanmer-springs/hanmer-springs-snow-report"),
        broken_river: SnowpoolWrapper.new(4, "/nz/canterbury/broken-river/broken-river-snow-report"),
        my_lyford: SnowpoolWrapper.new(16, "/nz/canterbury/mt-lyford/mt-lyford-snow-report"),
        craigieburn: SnowpoolWrapper.new(10, "/nz/canterbury/craigieburn/craigieburn-snow-report"),
        porters: SnowpoolWrapper.new(1, "/nz/canterbury/porters/porters-snow-report"),
        mt_olympus: SnowpoolWrapper.new(5, "/nz/canterbury/mt-olympus/mt-olympus-snow-report"),
        temple_basin: SnowpoolWrapper.new(2, "/nz/canterbury/temple-basin/temple-basin-snow-report"),
        ohau: SnowpoolWrapper.new(12, "/nz/mackenzie/ohau-snow-fields/ohau-snow-report"),
        mt_dobson: SnowpoolWrapper.new(13, "/nz/mackenzie/mt-dobson/mt-dobson-snow-report"),
        roundhill: SnowpoolWrapper.new(17, "/nz/mackenzie/roundhill/roundhill-snow-report"),
        fox_peak: SnowpoolWrapper.new(11, "/nz/mackenzie/fox-peak/fox-peak-snow-report"),
      }
    end
  end
end
