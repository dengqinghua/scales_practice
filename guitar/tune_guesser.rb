require_relative 'scales'

class TuneGuesser
  attr_reader :wrong, :slow, :slow_guess, :string, :pin

  SET     = 24
  TIMEOUT = 3

  def initialize(options = {})
    @string = options[:string].to_i
    @pin    = options[:pin].to_i
    @wrong  = false
    @slow   = false
  end

  def info
    "#{string} 弦 第 #{pin} 品: #{::SCALES[string][pin]}"
  end

  alias_method :wrong?, :wrong
  alias_method :slow?, :slow

  def guess!
    start_guess_time = Time.now

    loop do
      tune = $stdin.gets.strip

      if ::SCALES[string][pin].include?(tune)
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
