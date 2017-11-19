require_relative '../guesser_process'
require_relative 'tune'

module Ukulele
  class PinGuesserProcess < ::PinGuesserProcess
    def all_tune
      Ukulele::Tune::ALL
    end

    def tune_info
      Ukulele::Tune.info
    end

    def instument_string_count
      4
    end
  end
end
