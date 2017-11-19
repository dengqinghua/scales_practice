require_relative '../guesser_process'
require_relative 'scales'

module Ukulele
  class TuneGuesserProcess < ::TuneGuesserProcess
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
