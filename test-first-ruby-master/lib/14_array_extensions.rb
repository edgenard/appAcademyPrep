class Array
  def sum
    self.reduce(0, :+)
  end

  def square
    self.map { |e| e**2  }
  end

  def square!
    self.map! { |e| e**2 }
  end
end


