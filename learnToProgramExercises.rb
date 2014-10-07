# Learn to Program  by Chris Pine exercises.


=begin
2.5 A few things to try
write a program that tells you the following
1. Hours in a year. How many hours are in a year?
2. Minutes in a decade. How many minutes are in a decade?
3. Your age in seconds. How many seconds old are you?
4. Our dear authors age if our dear author is 1.025 million seconds old
=end

=begin
hours_in_year = 365 * 24

puts "1. There are " + hours_in_year.to_s + " hours in a year"

min_in_dec = (hours_in_year * 10 * 60) + 2 * (24 * 60) 

puts "2. There are " + min_in_dec.to_s + " minutes in a decade with two leap years"
puts "2a. There are " + (min_in_dec + (3 * (24 * 60))).to_s + " minutes in a decade with three leap years"

# There have been seven olympics since I've been born so I'm going to count 4 leap years
# It has been 88 days since my birthday
age_in_sec = (hours_in_year * 29 * 3600) + (92 * (24 * 3600))

puts "3. I am " + age_in_sec.to_s + " seconds old"

dear_author = ((1025 * 1000000)/3600)/ hours_in_year

puts "4. Our dear author is " + dear_author.to_s + " years old."

=end

#Section 5.5

# puts 'Hello there, and what\'s your name?'
# name = gets.chomp
# puts 'Your name is ' + name + '? What a lovely name!'
# puts 'Pleased to meet you, ' + name + '. :)'

=begin
5.6 A few things to try
1. Full name greeting. Write a program that asks for a persons first name, 
then middle, and then last. It should greet the person using their full name.

2. Bigger, better favorite number. Write a program that asks for a peron's favorite
number. Have your pogram add 1 to the number and then suggest the result as a bigger
better favorite number.
=end


# puts 'Hello, what is your first name?'
# first_name = gets.chomp
# puts 'Hello ' + first_name
# puts 'What is your middle name?'
# mid_name = gets.chomp
# puts  mid_name + ' is a lovely middle name. Not weird at all'
# puts 'What is your last name ' + first_name + ' ' + mid_name
# last_name = gets.chomp
# puts  last_name + "!" + ' What a last name!'
# full_name = first_name + ' ' + mid_name + ' ' + last_name
# puts 'Well, hello ' + full_name + '. It is a pleasure to meet you.'
#
# puts 'Well ' + full_name + ', what is your favorite number?'
# fave_num = gets.chomp
# better_num = fave_num.to_i + 1
# puts "Why don't you try " + better_num.to_s + "?"


=begin
6.2 A few things to try
1. Angry boss. Write an angry boss program that rudely asks what you want.
Whatever your answer the angry boss should yell it back to you and fire you.

2. Table of contents. Here's something for you to do in order to play around more
with center, ljust and rjust: write a program that will display a table of contents
so it looks like this:
                        Table of Contents
Chapter 1: Getting Started                            page 1
Chapter 2: Numbers                                    page 9
Chapter 3: Letters                                    page 13
=end

#Angry Boss and Table of Contents
# puts "Boss: What now?"
# request = gets.chomp
# puts "Me: What do you mean you want " +"'" + request + "' " + "?!"
# puts "Boss: Who do you think you are?!"
# puts "Me: I think I'm me"
# puts "Boss: You're fired!"
# puts "Me: Fine, I'm going to get a job making table of contents, I'll show you!"
# puts "Several months later Boss sees my picture on a bill board with this table of contents next to it: "
# line_width = 75
# puts "Table of Contents".center(line_width)
# puts "Chapter 1: Getting Started".ljust(line_width/2) + "page  1".rjust(line_width/2)
# puts "Chapter 2: Numbers".ljust(line_width/2) + "page  9".rjust(line_width/2)
# puts "Chapter 3: Letters".ljust(line_width/2) + "page 13".rjust(line_width/2)
# puts "Boss: I was wrong. So so wrong!"
# puts "Boss weeps"

=begin
7.5 A few things to try
1. 99 Bottles of Beer on the Wall. Write a program that prints out the lyrics to the beloved classic.

2. Deaf Grandma. Whatever you say (type in), she should respond with this:
HUH?! SPEAK UP, SONNY! unless you shout it(type it in all capitals). If you shout, she can hear you (or at least she thinks so) and yells back:
NO NOT SINCE 1938!
To make your program really believable, have Grandma shout a different year each time, maybe any year at random between 
1930 and 1950. You can't stop talking to Grandma until you shout BYE.

3. Deaf grandma extended. What if Grandma doesn't want you to leave? When you shout BYE, she could pretend not to hear you.
Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: if you shout BYE
three times but not in a row, you should still be talking to Grandma. 

4. Leap years. Write a program that asks for a starting year and an ending year and then puts all the leap years
between them (and including them, if they are also leap years). Leap years are years divisible by 4. However, years divisible
by 100 are not leap years unless they are also divisible by 400.

=end

#99 Bottles of Beer
# bottles = 99
# while bottles >= 0
#   if bottles > 1
#     puts bottles.to_s + " bottles of beer on the wall, " + bottles.to_s + " bottles of beer."
#     bottles = bottles - 1
#     puts "Take one down and pass it around, " + bottles.to_s + " bottles of beer on the wall."
#   elsif bottles == 1
#     puts bottles.to_s + ' bottle of beer on the wall, ' + bottles.to_s + ' bottle of beer.'
#     bottles = bottles - 1
#     puts "Take one down and pass it around, no more bottles of beer on the wall."
#   else
#     puts "No more bottles of beer on the wall, no more bottles of beer."
#     puts "Go to the store and buy some more, 99 bottles of beer on the wall."
#     break
#   end
# end


#Deaf Grandma and Deaf Grandma extended
# puts "Speak to your Nana"
# nana_huh = "HUH?! SPEAK UP SONNY!"
# nana_no = "NO! NOT SINCE "
#
# while true
#   year = 1900
#   say_to_nana = gets.chomp
#   while !(say_to_nana == say_to_nana.upcase)
#     puts nana_huh
#     say_to_nana = gets.chomp
#   end
#   if say_to_nana == "BYE"
#     bye_count = 1
#     while bye_count < 3
#       puts nana_huh
#       say_to_nana = gets.chomp
#       if say_to_nana != "BYE"
#         bye_count = bye_count - 1
#       else
#         bye_count = bye_count + 1
#       end
#     end
#     puts "OH, OK...BYE"
#     break
#   elsif say_to_nana == say_to_nana.upcase
#     rando = rand(30)
#     if rando <= 8
#       year = (year + rando + 30).to_s + "!"
#     else
#       year = (year + rando + 21).to_s + "!"
#     end
#     puts nana_no + year
#   end
# end

#Leap Year
# puts "Let me tell you all the leap years between two years."
# puts "What year do you want to start with?"
# start_year = gets.chomp
# puts "Good, I will start counting leap years from the year " + start_year
# puts "What year do you want me to end with?"
# end_year = gets.chomp
# puts "I'll stop counting when I get to " + end_year
# start_year_int = 0
# end_year_int = 0
# if start_year > end_year
#   start_year_int = end_year.to_i
#   end_year_int = start_year.to_i
# else
#   start_year_int = start_year.to_i
#   end_year_int = end_year.to_i
# end
#
# while start_year_int <= end_year_int
#   if start_year_int % 100 == 0
#     if start_year_int % 400 == 0
#       puts start_year_int.to_s + " is a leap year"
#     end
#   elsif start_year_int % 4 == 0
#     puts start_year_int.to_s + " is a leap year"
#   end
#   start_year_int += 1
# end
#
# puts "That's all the leap years between " + start_year + " and " + end_year

=begin
8.3
1. Building and sorting an array. Write the program we talked about at the 
beginning of this chapter, one that asks us to type as many words as we want 
(one word per line, continuing until we just press Enter on an empty line) and 
then repeats the words back to us in alphabetical order. Make sure to test your
program thor- oughly; for example, does hitting Enter on an empty line always
exit your program? Even on the first line? And the second? Hint: There’s a 
lovely array method that will give you a sorted version of an array: sort. Use it!

2. Table of contents, revisited. Rewrite your table of contents program on 
page 36. Start the program with an array holding all of the information for 
your table of contents (chapter names, page numbers, and so on). Then print out
the information from the array in a beautifully formatted table of contents.
=end

#Building and Sorting an array.
# puts "Write as many words as you want and I'll alphabetize them for you!"
# puts "When you're done, just press <<ENTER>> on an empty line"
# array = []
# while true
#   word = gets.chomp
#   if word == '' && array.length < 3
#     puts "I need more words"
#   elsif word == '' && array.length > 3
#     break
#   else
#     array<< word
#   end
# end
#
# array.length.times do |index|
#   array[index] = array[index].downcase
# end
# array = array.sort
# puts array

#Table of Contents
=begin
toc = [["Table of Contents"], ["Chapter 1: Getting Started", "page 1"], ["Chapter 2: Numbers", "page 9"],
["Chapter 3: Letters", "page 13"] ]

line_width = 50

toc.length.times do |index|
  if index == 0
    puts toc[index][index].center(line_width)
  else
    puts toc[index][0].ljust((line_width * 0.66).to_i) + toc[index][1].rjust((line_width * 0.33).to_i)
  end
end
=end
=begin
#9.5 A few things to try Improved ask method. That ask method I showed you was OK, but I bet you could do better. Try to clean it up by removing the answer variable. You’ll have to use return to exit from the loop. Well, it will get you out of the whole method,but it will get you out of the loop n the process. How do you like the resulting method? I usually try to avoid using return (a personal preference), but I might make an exception here.
=end
=begin
def ask question
  while true
    puts question
    reply = gets.chomp
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      else
        return false
      end
    else
      puts "Please reply with a 'yes' or 'no'"
    end
  end
end

puts 'Hello and thank you for participating in this survey. Please answer each 
question with "yes" or "no"'
puts

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'
ask 'Do you like drinking horchata?'
=end

#Old School Roman numerals.
=begin
In the early days of Roman numerals, the Romans didn’t bother with any of this 
new-fangled subtraction “IX” nonsense. No sir, it was straight addition, biggest 
to littlest—so 9 was written “VIIII,” and so on. Write a method that when passed an 
integer between 1 and 3000 (or so) returns a string containing the proper old-school 
Roman numeral. In other words, old_roman_numeral 4 should return 'IIII'. Make sure to 
test your method on a bunch of different numbers. Hint: Use the integer division and 
modulus methods on page 37.
=end
=begin
def old_roman number
  roman_string = ''
  roman_array = [[1000, 'M'], [500, 'D'], [100, 'C'], [50, 'L'], [10, 'X'], 
  [5, 'V'], [1, 'I'],]
  roman_array.each do |value|
    count = number / value[0]
    roman_string = roman_string + (value[1] * count)
    number = number - (count * value[0])
  end
  return roman_string
end

# puts old_roman 4
# puts old_roman 14  #'XIII'
# puts old_roman 25 # 'XXV'
# puts old_roman 94 # 'LXXXXIIII'
# puts old_roman 106 # 'CVI'
# puts old_roman 999 # 'DCCCCLXXXXVIIII'
# puts old_roman 2400 # 'MMCCCC'
# puts old_roman 444 #'CCCCXXXXIIII'
# puts old_roman 2999 # 'MMDCCCCLXXXXVIIII'
=end
=begin
“Modern” Roman numerals. Eventually, someone thought it would be terribly clever if putting a smaller number before a larger one meant you had to subtract the smaller one. As a result of this development, you must now suffer. Rewrite your previous method to return the new-style Roman numerals so when someone calls roman_numeral 4, it should return 'IV'
=end

=begin
def new_roman number
  roman_string = ''
  roman_array = [[1000, 'M'], [500, 'D'], [100, 'C'], [50, 'L'], [10, 'X'], 
  [5, 'V'], [1, 'I'],]
  roman_array.each do |value|
    count = number / value[0]
    previous_index = roman_array.index(value) - 1
    next_index = roman_array.index(value) + 1
    previous_value = roman_array[previous_index]
    next_value = roman_array[next_index]
    
    if count == 1 && (number - value[0]) == 9 && (number - value[0]) % 4 != 0 
      roman_string = roman_string + next_value[1] + previous_value[1]
      number = number - (previous_value[0] - next_value[0])
    elsif count == 4 #check if 4
      roman_string = roman_string + value[1] + previous_value[1]
      number = number - (count * value[0])
    else
      roman_string = roman_string + (value[1] * count)
      number = number - (count * value[0])
    end
  end
  return roman_string
end


puts new_roman 4 # 'IV'
puts new_roman 9 # 'IX'
puts new_roman 14 # 'XIV'
puts new_roman 19 # 'XIX'
puts new_roman 94 # 'XCIV'
puts new_roman 104 #'CIV'
puts new_roman 109 # 'CIX'
# puts new_roman 999 # 'CMXCIX'
# puts new_roman 2400 # 'MMCD'
puts new_roman 444 # 'CDXLIV'
# puts new_roman 2999 # 'MMCMXCIX'

=end


#Continent Size Example from Chapter 10
=begin
M = 'land'
o = 'water'
world = [[o,o,o,o,M,o,o,o,o,o,M], 
         [o,o,o,o,M,M,o,o,o,M,o], 
         [o,o,o,M,o,o,o,o,M,M,o], 
         [o,o,o,M,o,o,o,M,o,M,o], 
         [o,o,o,M,o,M,M,o,o,o,o], 
         [o,o,o,o,M,M,M,M,o,o,o], 
         [o,o,o,M,M,M,M,M,M,M,M], 
         [o,o,o,M,M,o,M,M,M,o,o], 
         [o,o,M,o,o,o,M,M,o,o,o], 
         [o,M,o,o,o,M,o,o,M,o,o], 
         [M,o,o,o,o,o,o,o,o,M,M]]

def continent_size world, x, y
  if y > (world.length - 1) || y < 0
    return 0
  elsif x > (world[y].length - 1) || x < 0
    return 0
  elsif world[y][x] != 'land' 
    return 0
  end
  size = 1
  world[y][x] = 'counted land'
  size = size + continent_size(world, x-1,  y-1) #above left
  size = size + continent_size(world, x  ,  y-1) #above
  size = size + continent_size(world, x+1,  y-1) #above right
  size = size + continent_size(world, x-1,    y) #left
  size = size + continent_size(world, x+1,    y) #right
  size = size + continent_size(world, x  ,  y+1) #below
  size = size + continent_size(world, x+1,  y+1) #below right
  size = size + continent_size(world, x-1,  y+1) #below left
  
  size
end
puts continent_size(world, 5 , 5)

=end

#Sorting algorithm example from Chapter 10

#Iterative Method
def my_sort word_array
  sorted_array = []
  smallest = word_array[0]
  while word_array.length > 0
    word_array.each do |word|
      if word < smallest
        smallest = word
      end
    end
    sorted_array << smallest
    word_array.delete_at(word_array.index(smallest))
    smallest = word_array[0]
  end
  puts 'my_sort gives: '
  puts sorted_array
  return sorted_array
end


#Recursive Method



#tests
words = ['john', 'john', 'michael', 'billy', 'wile', 'simon', 'willie', 'john', 'eric', 'phil', 'zoolander', 'fran', 'ian', 'kevin', 'larry', 'barry', 'chuck', 'alan' ]

puts 'The auto Sort gives:'
puts words.sort

if my_sort(words) == words.sort
  puts true
else
  puts false
end


