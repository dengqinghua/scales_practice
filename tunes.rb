class Tune
  BASE = {
    1 => 8, # 1弦8品
    2 => 1,
    3 => 5,
    4 => 10,
    5 => 3,
    6 => 8
  }


  DISTANCE = {
    '1'  => 0,
    '#1' => 1,
    'b2' => 1,
    '2'  => 2,
    '#2' => 3,
    'b3' => 3,
    '3'  => 4,
    '4'  => 5,
    '#4' => 6,
    'b5' => 6,
    '5'  => 7,
    '#5' => 8,
    'b6' => 8,
    '6'  => 9,
    '#6' => 10,
    'b7' => 10,
    '7'  => 11,
  }

  ALL = DISTANCE.keys

  class << self
    def get_distance(tune)
      DISTANCE[tune]
    end

    ##
    # ==== Description
    #   根据距离, 计算这个距离每根弦对应的品位应该是多少
    #
    # ==== Example
    #   其中BASE是 音符`Duo`在吉他指板上的前十二品的所有位置
    #
    #   Tune.calculate_by_distance(1)
    #
    def calculate_by_distance(distance)
      BASE.inject({}) do |result, (string, pin)|
        now_pin = pin + distance
        pins    = [now_pin]

        if now_pin >= 12
          pins << now_pin - 12
        end

        result.merge string => pins
      end
    end

    ##
    # ==== Returns
    # Tune.generate
    #
    # {
    #   '1'  => 'DUO在吉他的位置',
    #   '#1' => '升DUO在吉他的位置',
    #   'b2' => '降Rui在吉他的位置',
    #   ...
    # }
    #
    #  DUO在吉他的位置
    #    {
    #      1 => 8, # 1弦8品
    #      2 => 1,
    #      3 => 5,
    #      4 => 10,
    #      5 => 3,
    #      6 => 8
    #    }
    #
    def generate
      DISTANCE.inject({}) do |result, (tune, distance)|
        result.merge tune => calculate_by_distance(distance)
      end
    end
  end

  INFO = generate
end
