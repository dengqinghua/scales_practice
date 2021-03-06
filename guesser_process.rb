require_relative 'tune_guesser'
require_relative 'pin_guesser'

class GuesserProcess
  attr_reader :wrong_guesses, :slow_guesses

  def initialize(options = {})
    @slow_guesses  = []
    @wrong_guesses = []

    @strings = fetch_strings(options)
  end

  def fetch_strings(options)
    if options && options[:only]
      options[:only].split(',').map(&:to_i)
    else
      (1..instument_string_count).to_a
    end
  end

  def current_string
    if @strings.one?
      @current_string ||= @strings.first
    else
      @strings.sample
    end
  end

  def related_scales
    raise "NOT IMPLEMENT ERROR"
  end

  def scales
    raise "NOT IMPLEMENT ERROR"
  end

  def get_string
    puts '请问输入哪一根弦?'

    loop do
      if scales.keys.include?(string = $stdin.gets.to_i)
        @current_string = string
        break
      else
        puts '输入错误!'
      end
    end

    puts "您输入了弦: #{@current_string}"
    puts "=========================\n"
  end
end

class PinGuesserProcess < GuesserProcess
  def run!
    24.times do |time|
      puts "----------------"
      puts "第 #{time + 1} 次测试"
      puts "音 #{tune = all_tune.sample} 在 第 #{string = current_string} 弦 是 第几品?"

      guesser = PinGuesser.new(string: string, tune: tune, tune_info: tune_info)
      guesser.guess!

      @wrong_guesses << guesser.info if guesser.wrong?
      @slow_guesses << guesser.info  if guesser.slow?
    end
  end
end

class TuneGuesserProcess < GuesserProcess
  def run!
    24.times do |time|
      puts "----------------"
      puts "第 #{time + 1} 次测试"
      puts "#{string = current_string} 弦 第 #{pin = rand(13)} 品 是 什么音?"

      guesser = TuneGuesser.new(string: string, pin: pin, scales: scales)
      guesser.guess!

      @wrong_guesses << guesser.info if guesser.wrong?
      @slow_guesses << guesser.info  if guesser.slow?
    end
  end
end
