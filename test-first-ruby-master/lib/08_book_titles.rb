class Book
  attr_accessor :title
  def title
    non_capitalized_words = %w{the and an a in of}
    offset = 0
    @title.gsub!(/\w+/) do |match|
      if @title.index(match, offset) == 0
        offset = 1
        match.capitalize 
      elsif non_capitalized_words.include?(match) 
        match 
      elsif match == "i"
        match.capitalize
      else
        match.capitalize
      end
    end
  end
end
