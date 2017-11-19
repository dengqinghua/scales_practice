require_relative 'tune'
require_relative 'scales'

module Guitar
  module TuneUtils
    def instument_string_count
      6
    end

    def related_scales
      Guitar::STRING_ALL
    end

    def scales
      Guitar::SCALES
    end

    def all_tune
      Guitar::Tune::ALL
    end

    def tune_info
      Guitar::Tune.info
    end
  end
end
