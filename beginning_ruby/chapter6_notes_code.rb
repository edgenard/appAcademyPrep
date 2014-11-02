#Chapter 6 Notes and code.

class Shape
end

class Square < Shape
  def initialize(side_length)
    @side_length = side_length
    if defined?(@@number_of_squares)
      @@number_of_squares += 1
    else
      @@number_of_squares = 1
    end
  end
  def self.count
    @@number_of_squares
  end

  def area
    @side_length * @side_length
  end

  def perimeter
    @side_length * 4
  end

  def self.test_method
    puts "Hello from Square Class"
  end

  def test_method
    puts "Hello from an instance of Square"
  end
end


class Triangle < Shape
  def initialize(base_width, height, side1, side2, side3)
    @base_width = base_width
    @height = height
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def area
    @base_width * @height / 2
  end
  
  def perimeter
    @side1 + @side2 + @side3
  end
  
end


class ParentClass

  def method1
    puts "Hello from method1 in the Parent Class"
  end

  def method2
    puts "Hello from method2 in the Parent Class"
  end
  
end

class ChildClass < ParentClass
  
  def method2
    puts "Hello from method2 in the Child Class"
  end  
end

class GrandChildClass < ChildClass
  def method3
    puts "Hello from GrandChildClass"
  end  
  
end

class Person
  attr_accessor :age

  def initialize(name)
    set_name(name)
  end
  
  def name
    return @first_name + " " + @last_name
  end

  def age
    @age
  end

  def age_difference(other_person)
    (self.age - other_person.age).abs
  end

  protected :age

  private

  def set_name(name)
    first_name, last_name = name.split(/\s+/)
    set_first_name(first_name)
    set_last_name(last_name)
  end

  def set_first_name(first_name)
    @first_name = first_name
  end

  def set_last_name(last_name)
    @last_name = last_name  
  end

end

class Doctor < Person
  def name
    "Dr. " + super
  end  
end


class Animal
  attr_accessor :name 
  def initialize(name)
    @name = name 
  end
end

class Dog < Animal
  def talk
    "Woof!"
  end
end

class Cat < Animal
  def talk
    "Meow!"
  end
end

class Drawing
  def make_circle
    Circle.new
  end

  class Circle
    def what_am_i
      "I am a circle"
    end
  end

  class Line
    
  end
end

def circumference(radius)
  2 * Pi * radius
end




module NumberStuff
  def NumberStuff.random
    rand(10000)
  end
end

module LetterStuff
  def LetterStuff.random
    (rand(26) + 65).chr 
  end
end

module Toolbox
  class Ruler
    attr_accessor :length 
  end
end

module Country
  class Ruler
    attr_accessor :name 
  end
end

module UsefulFeature
  def class_name
    self.class.to_s
    
  end
  
end

class Thing
  include UsefulFeature
end

module AnotherFeature
  def do_stuff
    puts "This is a test"
  end
  def add_stuff(*number)
    number.reduce(:+)
  end
end

class AllVowels
  include Enumerable 
  @@vowels = %w{a e i o u}
  def each
    @@vowels.each {|v| yield v}
  end
end


class Song
  include Comparable
  attr_accessor :length, :song_name
  def <=> (other)
    @song_name<=> other.song_name
  end

  def initialize (song_name, length)
    @song_name = song_name
    @length = length
  end
end

a =  Song.new("Rock Around the Clock", 143)
b = Song.new("Bohemian Rhapsody", 544)
c = Song.new("Party all the time", 333)


p a.song_name

p a.length

p c > b

p c.between?(a, b)

p "rock" > "xbohemian"
























