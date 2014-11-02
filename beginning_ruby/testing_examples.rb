class String
  def titleize
    self.gsub(/(\A|\s)\w/) { |letter| letter.upcase }
  end
end


require 'minitest/autorun'

class TestTitleize < Minitest::Test
  def test_basic
    assert_equal("This Is A Test", "this is a test".titleize)
    assert_equal("I'm So Serious, 34", "i'm so serious, 34".titleize)
    assert_equal("Micheal Jordan Scored 38 Points", "micheal Jordan scored 38 points".titleize)
    assert_equal("expected", "this should failt".titleize)
  end
end

puts "this is a test".titleize
puts "i'm so serious, 34".titleize
puts "Micheal Jordan scored 38 points".titleize
