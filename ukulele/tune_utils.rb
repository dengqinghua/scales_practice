require_relative 'tune'
require_relative 'scales'

module Ukulele
  module TuneUtils
    def all_tune
      Ukulele::Tune::ALL
    end

    def tune_info
      Ukulele::Tune.info
    end

    def instument_string_count
      4
    end

    def related_scales
      Ukulele::STRING_ALL
    end

    def scales
      Ukulele::SCALES
    end
  end
end
