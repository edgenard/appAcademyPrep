class Temperature
  attr_accessor :in_fahrenheit, :in_celsius

  def ftoc
    ((@in_fahrenheit - 32) * (5.0/9.0))
  end
    
  def ctof
    ((@in_celsius * (9.0/5.0)) + 32)
  end

  def initialize(options = {})
    if options[:f] && !options[:c]
      @in_fahrenheit = options[:f]
      @in_celsius = ftoc

    elsif options[:c] && !options[:f] 
      @in_celsius = options[:c]
      @in_fahrenheit = ctof

    elsif options[:f] && options[:c]
      @in_celsius = options[:c]
      @in_fahrenheit = options[:f]
    end  
  end


  def self.from_celsius(degrees)
    new ({:c => degrees})
  end

  def self.from_fahrenheit(degrees)
    new ({:f => degrees})
  end



end

class Celsius < Temperature
  def initialize(degrees)
    super ({:c => degrees})
  end
end

class Fahrenheit < Temperature
  def initialize(degrees)
    super ({:f => degrees})
  end
end























