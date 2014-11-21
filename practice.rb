require_relative 'tune_guesser_process'

process = TuneGuesserProcess.new(options: ARGV.first)
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
