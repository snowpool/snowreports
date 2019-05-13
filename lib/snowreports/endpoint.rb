module Snowreports
  class Endpoint
    SnowpoolWrapper = Struct.new(:id, :snowhq_id)

    def self.all
      @all ||= {
        turoa: SnowpoolWrapper.new(22, 9),
        whakapapa: SnowpoolWrapper.new(21, 10),
        cardrona: SnowpoolWrapper.new(15, 2),
        treble_cone: SnowpoolWrapper.new(7, 4),
        remarkables: SnowpoolWrapper.new(6, 6),
        coronet_peak: SnowpoolWrapper.new(14,5),
        snow_farm: SnowpoolWrapper.new(18, 24),
        manganui: SnowpoolWrapper.new(24, 14),
        rainbow: SnowpoolWrapper.new(20, 12),
        mt_hutt: SnowpoolWrapper.new(8, 7),
        mt_cheeseman: SnowpoolWrapper.new(3, 16),
        hanmer_springs: SnowpoolWrapper.new(9, 20),
        broken_river: SnowpoolWrapper.new(4, 13),
        my_lyford: SnowpoolWrapper.new(16, 15),
        craigieburn: SnowpoolWrapper.new(10, 17),
        porters: SnowpoolWrapper.new(1, 3),
        mt_olympus: SnowpoolWrapper.new(5, 19),
        temple_basin: SnowpoolWrapper.new(2, 18),
        ohau: SnowpoolWrapper.new(12, 11),
        mt_dobson: SnowpoolWrapper.new(13, 8),
        roundhill: SnowpoolWrapper.new(17, 23),
        fox_peak: SnowpoolWrapper.new(11, 22),
      }
    end
  end
end
