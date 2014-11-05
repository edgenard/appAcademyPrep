def reverser 
  yield.split.collect! {|word| word.reverse}.join(" ")
end

def adder(addend = 1)
  addend + yield
end

def repeater(repeats = 1)
  repeats.times do 
    yield
  end
end