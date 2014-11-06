require "time"


def measure(number = 1)
  start = Time.now
  number.times {yield}
  finish = Time.now
  avg = (finish - start)/number
  avg
end

