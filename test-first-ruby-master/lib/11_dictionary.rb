class Dictionary
  attr_accessor :entries
  def initialize
    @entries = {}
  end

  def add(*entry)
    entry = entry[0] 
    entry.is_a?(Hash) ? @entries.merge!(entry) : @entries.store(entry,nil)
  end

  def keywords
    @entries.keys.sort 
  end

  def include?(key)
    @entries.has_key?(key)
  end

  def find(word)
    @entries.select {|key, value| key.start_with?(word) }
  end

  def printable
    keywords = @entries.keys.sort
    keywords.map do |word|
      "[#{word}] #{@entries[word].inspect}"  
    end.join("\n")
  end



end




