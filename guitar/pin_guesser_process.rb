require_relative '../guesser_process'
require_relative 'tune'

module Guitar
  class PinGuesserProcess < ::PinGuesserProcess
    def all_tune
      Guitar::Tune::ALL
    end

    def tune_info
      Guitar::Tune.info
    end

    def instument_string_count
      6
    end
  end
end
