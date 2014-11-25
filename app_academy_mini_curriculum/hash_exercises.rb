
def set_add_el(hash, el)
  new_hash = {}
  new_hash[el] = nil
  new_hash
end

def set_remove_el(hash, el)
  new_hash = hash
  new_hash.delete(el)
  new_hash
end

def set_list_els(hash)
  hash.keys
end

def set_member?(hash, member)
  hash.has_key?(member)
end

def set_union(hash1, hash2)
  hash1.merge(hash2)
end

def set_intersection(hash1, hash2)
  hash1.select { |e|  hash2.has_key?(e)  }
end

def set_minus(hash1, hash2)
  hash1.select {|e| !hash2.has_key?(e)}
end




# Note these should be safe methods (no !)
p set_add_el({}, :x) # => {:x => true}
p set_add_el({:x => true}, :x) # => {:x => true} # This should automatically work if the first method worked
p set_remove_el({:x => true}, :x) # => {}
p set_list_els({:x => true, :y => true}) # => [:x, :y]
p set_member?({:x => true}, :x) # => true
p set_union({:x => true}, {:y => true}) # => {:x => true, :y => true}
p set_intersection({1 => "this", 2 => "thing", 3 => "here"}, {4 => "this", 2 => "maybe", 3 => "not"} )  #  I'm not going to tell you how the last two work
p set_minus({1 => "this", 2 => "thing", 3 => "here"}, {4 => "this", 2 => "maybe", 3 => "not"}) # Return all elements of the first array that are not in the second array, not vice versa


















