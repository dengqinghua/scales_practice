require_relative 'tune_guesser'

class TuneGuesserProcess
  attr_reader :wrong_guesses, :slow_guesses, :random

  def initialize(options:)
    @slow_guesses  = []
    @wrong_guesses = []

    @random = true if options == 'r'
  end

  def current_string
    if random
      rand(1..6)
    else
      @current_string
    end
  end

  def related_scales
    if random
      STRING_ALL
    else
      Object.const_get(:"STRING_#{current_string}")
    end
  end

  def get_string
    puts 'Which string?'

    loop do
      if ::SCALES.keys.include?(string = $stdin.gets.to_i)
        @current_string = string
        break
      else
        puts 'Wrong input!'
      end
    end

    puts "You have input string: #{@current_string}"
    puts "=========================\n"
  end

  def run!
    get_string unless random

    TuneGuesser::SET.times do |time|
      puts "----------------"
      puts "The #{time} time GUESS"
      puts "The #{string = current_string} string #{pin = rand(13)} pin is ?"

      guesser = TuneGuesser.new(string: string, pin: pin)
      guesser.guess!

      @wrong_guesses << guesser.info if guesser.wrong?
      @slow_guesses << guesser.info  if guesser.slow?
    end
  end
end
