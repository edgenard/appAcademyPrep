# Write your own uniq method, extend the Array class with it.

# class Array
#   def my_uniq
#     uniq_values =  []
#     self.each do |value|
#       uniq_values << value unless uniq_values.include?(value)      
#     end
#     uniq_values
#   end
# end

# p [1, 2, 1, 3, 4, 2, 3, 5].my_uniq

# p [1, 2, 1, 3, 4, 2, 3, 5].my_uniq == [1, 2, 1, 3, 4, 2, 3, 5].uniq

#Write a method that finds if an array of numbers has a pair that sums to zero.
#Be careful of the case of zero; there need to be two zeroes in the array to make a pair that sums to zero.

# def sum_zero (array)
#   array.each do |value|
#     array.each do |value2|
#       if value + value2 == 0
#         return true
#       end
#     end
    
#   end
#   false
# end

# p sum_zero([1, 2, 3, -1, 3])

# p sum_zero([1, 2, 3, 4, 5, 6])


#Write a Towers of Hanoi game.
#Keep three arrays, which represents the piles of discs. Pick a representation of 
#the discs to store in the arrays; maybe just a number representing their size.
#In a loop, prompt the user (using gets) and ask what pile to select a disc from, and where to put it.
# After each move, check to see if they have succeeded in moving all the discs, to the final pile. If so, they win!

require "debugger"

pile_1 = [1, 2, 3]
pile_2 = []
pile_3 =[]
answer = [1, 2, 3]




def pile_pick(pile_1, pile_2, pile_3)
  choice = gets.chomp
  if choice == "1" && !pile_1.empty?
    puts "Picking from pile 1"
    pick = pile_1.shift  
  elsif choice == "2" && !pile_2.empty?
    puts "Picking from pile 2" 
    pick = pile_2.shift
  elsif choice == "3" && !pile_3.empty?
    puts "Picking from pile 3"
    pick = pile_3.shift   
  else
    puts "Please choose a pile 1, 2 or 3 OR a pile that is NOT empty"
    puts "The piles are pile 1: #{pile_1}, pile 2: #{pile_2}, pile 3: #{pile_3}"
    pile_pick(pile_1, pile_2, pile_3)
  end
  pick
end

def place_pick(pile_1, pile_2, pile_3, pick)
  place = gets.chomp
  pick = pick.to_i
  if place == "1" && (pile_1.empty? || pick < pile_1[0])
    puts "You chose 1"
    pile_1.unshift(pick)
  elsif place == "2" && (pile_2.empty? || pick < pile_2[0])
    puts "You chose 2"
    pile_2.unshift(pick)
  elsif place == "3" && (pile_3.empty? || pick < pile_3[0])
    puts "You chose 3"
    pile_3.unshift(pick)
  else
    puts "Please choose 1, 2 or 3"
    puts "You can only put a disc on a pile if it is empty or it will be sitting on top of a smaller disk"
    puts "The piles are pile 1: #{pile_1}, pile 2: #{pile_2}, pile 3: #{pile_3}"
    place_pick(pile_1, pile_2, pile_3, pick)
  end
end

while pile_3 != answer
  pile_state = "The piles are pile 1: #{pile_1}, pile 2: #{pile_2}, pile 3: #{pile_3}"
  puts pile_state
  puts "Which pile do I get a disk from?"

  pick = pile_pick(pile_1, pile_2, pile_3)

  puts "You picked up #{pick}"
  puts "Where do you want to put your pick?"

  puts pile_state

  place_pick(pile_1, pile_2, pile_3, pick)

end

puts "You have solved the puzzle!!"

puts "The piles are pile 1: #{pile_1}, pile 2: #{pile_2}, pile 3: #{pile_3} "
















