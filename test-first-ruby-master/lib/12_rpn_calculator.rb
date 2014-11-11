class RPNCalculator
  attr_accessor :calculator
  def initialize
    @calculator = []
  end

  def push(number)
    @calculator.push(number)
  end

  def plus
    binary_operation do |last, second_to_last|
      last + second_to_last
    end
  end

  def minus
    binary_operation do |last , second_to_last|
      second_to_last - last
    end
  end

  def divide
    binary_operation do |last, second_to_last|
      second_to_last.to_f / last.to_f
    end
  end

  def times
    binary_operation do |last, second_to_last|
      last * second_to_last
    end
  end

  def value
    @calculator[-1]
  end

  def method_name
    
  end

  private

  def binary_operation
    raise "calculator is empty" if @calculator.empty?
    last = @calculator.pop
    second_to_last = @calculator.pop

     result= yield last, second_to_last

    @calculator.push(result)
  end

end
