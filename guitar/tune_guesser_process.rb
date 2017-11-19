require_relative '../guesser_process'
require_relative 'scales'

module Guitar
  class TuneGuesserProcess < ::TuneGuesserProcess
    def instument_string_count
      6
    end

    def related_scales
      Guitar::STRING_ALL
    end

    def scales
      Guitar::SCALES
    end
  end
end
