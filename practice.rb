require_relative 'guesser_process'

type, only, _ = ARGV

process = \
  if type == 't'
    TuneGuesserProcess.new(only: only)
  elsif type == 'p'
    PinGuesserProcess.new(only: only)
  else
    raise '请输入 t 或者 p, t代表tune, p代表pin'
  end

process.run!

puts '====RESULTS===='

if process.wrong_guesses.empty?
  puts 'Congratulations! All right!'
else
  puts 'wrong_guesses:'
  puts process.wrong_guesses
end

if process.slow_guesses.empty?
  puts 'Congratulations! All guesses are quick!'
else
  puts 'slow_guesses:'
  puts process.slow_guesses
end

puts '====RESULTS===='

puts 'Related Scales'
puts process.related_scales
