class Dictionary
  attr_accessor :entries
  def initialize
    @entries = {}
  end

  def add(entry = {})
    @entries[entry.keys[0]] = entry[entry.keys[0]]
  end

  def keywords
    @entries.keys 
  end
end
