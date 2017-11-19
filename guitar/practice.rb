require_relative '../practice'
require_relative 'tune_guesser_process'
require_relative 'pin_guesser_process'

type, only, _ = ARGV

process = \
  if type == 't'
    Guitar::TuneGuesserProcess.new(only: only)
  elsif type == 'p'
    Guitar::PinGuesserProcess.new(only: only)
  else
    raise '请输入 t 或者 p, t代表tune, p代表pin'
  end

Pracice.new(process).run!
