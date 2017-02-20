require_relative 'scales'

class PinGuesser
  attr_reader :wrong, :slow, :slow_guess, :string, :pin, :tune

  SET     = 24
  TIMEOUT = 3

  ##
  # ==== Description
  #   guesser = PinGuesser.new(tune: 'b3', string: 2)
  #   guesser.run!
  #
  # 需要输入 4
  #
  # 即: 2弦4品为 b3
  #
  def initialize(options = {})
    @string = options[:string].to_i
    @tune   = options[:tune].to_s
    @wrong  = false
    @slow   = false
  end

  def info
    "Tune #{tune} AT string #{string} #{::Tune::INFO[tune][string]}"
  end

  alias_method :wrong?, :wrong
  alias_method :slow?, :slow

  def guess!
    start_guess_time = Time.now

    loop do
      pin = $stdin.gets.strip.to_i

      if ::Tune::INFO[tune][string] && ::Tune::INFO[tune][string].include?(pin)
        if Time.now - start_guess_time > TIMEOUT
          @slow = true
          puts 'Yep but Slow!'
        else
          puts 'Yep and Quick!'
        end

        break
      else
        puts 'NOPE!'
        @wrong = true
      end
    end
  end
end
