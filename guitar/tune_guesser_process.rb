require_relative 'tune_guesser'

#class TuneGuesserProcess
#  attr_reader :wrong_guesses, :slow_guesses
#
#  def initialize(options: nil)
#    @slow_guesses  = []
#    @wrong_guesses = []
#
#    @strings = fetch_strings(options)
#  end
#
#  def fetch_strings(options)
#    if options
#      _, strings = options.split('=')
#      strings.split(',').map(&:to_i)
#    else
#      (0..6).to_a
#    end
#  end
#
#  def current_string
#    if @strings.one?
#      @current_string ||= @strings.first
#    else
#      @strings.sample
#    end
#  end
#
#  def related_scales
#    STRING_ALL
#  end
#
#  def get_string
#    puts 'Which string?'
#
#    loop do
#      if ::SCALES.keys.include?(string = $stdin.gets.to_i)
#        @current_string = string
#        break
#      else
#        puts 'Wrong input!'
#      end
#    end
#
#    puts "You have input string: #{@current_string}"
#    puts "=========================\n"
#  end
#
#  def run!
#    TuneGuesser::SET.times do |time|
#      puts "----------------"
#      puts "The #{time} time GUESS"
#      puts "The #{string = current_string} string #{pin = rand(13)} pin is ?"
#
#      guesser = TuneGuesser.new(string: string, pin: pin)
#      guesser.guess!
#
#      @wrong_guesses << guesser.info if guesser.wrong?
#      @slow_guesses << guesser.info  if guesser.slow?
#    end
#  end
#end