require_relative 'practice'

module Guitar
  class Process < ::Process
  end
end

type, only, _ = ARGV

process = \
  if type == 't'
    Guitar::TuneGuesserProcess.new(only: only)
  elsif type == 'p'
    Guitar::PinGuesserProcess.new(only: only)
  else
    raise '请输入 t 或者 p, t代表tune, p代表pin'
  end

Guitar::Process.new(process).run!
