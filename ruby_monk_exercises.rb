# def sort_string(string)
#   split_string = string.split
#   def sort_array(array)
#   	if array.length <= 1
#   		return array
#   	end
#     middle = array.pop
#     less = array.select{|word| word.length < middle.length}
#     more = array.select {|word| word.length > middle.length}
#     sort_array(less) + [middle] + sort_array(more)
#   end
#   sort_array(split_string)
# end

# puts sort_string("I am Awesome")

# class Color
#   attr_reader :r, :g, :b
#   def initialize(r, g, b)
#     @r = r
#     @g = g
#     @b = b
#   end

#   def brightness_index
#     (@r*299 + @g * 587 + @b * 114) / 1000
#   end

#   def brightness_difference(another_color)
#     (self.brightness_index - another_color.brightness_index).abs
#   end

#   def hue_difference(another_color)
#     (self.r - another_color.r).abs + (self.g - another_color.g).abs + (self.b - another_color.b).abs
#   end

#   def enough_contrast?(another_color)
#     if self.hue_difference(another_color) > 500 && self.brightness_difference(another_color) > 125
#     	return true
#     end
#     return false
#   end
# end

# my_color = Color.new(112, 32, 98)

# puts my_color.brightness_index

# # puts my_color.brightness_difference(200, 187, 12)

# new_color = Color.new(200, 187, 12)

# puts new_color.brightness_index

# puts new_color.brightness_difference(my_color)

# puts new_color.enough_contrast?(my_color)



# def number_shuffle(number)
# 	number_string = number.to_s
# 	number_array = number_string.split(/\d/)
# 	result = []
# 	return number_array
# end


# puts number_shuffle(123)

# puts "Hello"


# def array_it(*whatevs)
# 	arrayed = whatevs.inject([]){|array, item| array << item}
# 	return arrayed
# end

# test = array_it(4, 5, "string", 34, add:true)

# test.each do |item|
# 	if item.is_a?(Hash)
# 		if item.key?(:add) && item[:add]
# 			puts "You should add"
# 		elsif item.key?(:subtract) && item[:subtract]
# 			puts "You should subtract"
# 		end
# 	end
# end

# class MyArray
#   attr_reader :array

#   def initialize(array)
#     @array = array
#   end

#   def sum(initial_value = 0)
#   	if block_given?
  		
#   		@array.each do |item|
#   			changed_item = yield item
#   			initial_value = initial_value + changed_item
#   		end
#   	else
#   		@array.each {|item| initial_value = initial_value + item}
#   	end
    
#     return initial_value
#   end

# end

class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    bill = 0
    order_list = orders.inject([]) { |list, item| list << item}
    order_list.each do |order|
    	order.each do |item, price|
    		bill = bill + (order[item] * @menu[item])
    	end
    end
    return bill
  end
    
end










