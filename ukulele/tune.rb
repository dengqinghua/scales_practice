require_relative '../tune'

module Ukulele
  class Tune < ::Tune
    class << self
      def base
        {
          1 => 3, # 1弦3品
          2 => 5,
          3 => 0,
          4 => 5
        }
      end
    end
  end
end
