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

  def tokens(string)
    string.split.map! do |character|
      if character =~ /\d/
        character.to_i
      else
        character.to_sym
      end
    end
  end

  def evaluate(string)
    tokens(string).map! do |token|
      if token.is_a?(Integer)
        self.push(token)
      elsif token == :*
          self.times
      elsif token == :/
          self.divide
      elsif token == :+
          self.plus
      elsif token == :-
          self.minus
      end
    end
    self.value
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




