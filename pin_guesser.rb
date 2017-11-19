class PinGuesser
  attr_reader :wrong, :slow, :slow_guess, :string, :pin, :tune, :tune_info

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
    @string    = options[:string].to_i
    @tune      = options[:tune].to_s
    @wrong     = false
    @slow      = false
    @tune_info = options[:tune_info]
  end

  def info
    "音 #{tune} 在 第 #{string} 弦: #{tune_info[tune][string]}"
  end

  alias_method :wrong?, :wrong
  alias_method :slow?, :slow

  def guess!
    start_guess_time = Time.now

    loop do
      pin = $stdin.gets.strip.to_i

      if tune_info[tune][string] && tune_info[tune][string].include?(pin)
        if Time.now - start_guess_time > TIMEOUT
          @slow = true
          puts '正确, 但是太慢了!'
        else
          puts '正确, 很好!'
        end

        break
      else
        puts '错误!'
        @wrong = true
      end
    end
  end
end
