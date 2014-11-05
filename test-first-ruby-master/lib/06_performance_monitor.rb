require "benchmark"

require "time"

def measure (number = 1)
  Benchmark.realtime() do
    number.times {yield} #What is being yielded? 
  end

end


@eleven_am = Time.parse("2011-1-2 11:00:00")
run_times = [8,6,5,7]
fake_time = @eleven_am

average_time = measure(4) do
  fake_time += run_times.pop  # Does this mean that for 4 times we pass fake_time += run_times.pop to Benchmark.realtime()
  
  p fake_time
end

