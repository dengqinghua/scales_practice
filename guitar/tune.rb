require_relative '../tune'

module Guitar
  class Tune < ::Tune
    class << self
      def base
        {
          1 => 8, # 1弦8品
          2 => 1,
          3 => 5,
          4 => 10,
          5 => 3,
          6 => 8
        }
      end
    end
  end
end
