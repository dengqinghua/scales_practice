require_relative 'guesser_process'

class Pracice
  def initialize(process)
    @process = process
  end

  def run!
    @process.run!

    puts '====RESULTS===='

    if @process.wrong_guesses.empty?
      puts '恭喜! 全对!'
    else
      puts '错误的部分如下:'
      puts @process.wrong_guesses
    end

    if @process.slow_guesses.empty?
      puts '恭喜! 全部都很快!'
    else
      puts '慢速的部分如下:'
      puts @process.slow_guesses
    end

    puts '====RESULTS===='

    puts '相关的品位图如下'
    puts @process.related_scales
  end
end
