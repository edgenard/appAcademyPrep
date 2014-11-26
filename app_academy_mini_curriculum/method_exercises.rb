# Implement a Rock, Paper, Scissors game. 
# The method rps should take a string (either "Rock", "Paper" or "Scissors") as 
# a parameter and return the computer's choice, and the outcome of the match.

def rps(choice)
  choice = choice.capitalize
  rps = ["Rock", "Paper", "Scissors"]
  computer_choice = rps[rand(3)]
  return "You: #{choice}, Computer: #{computer_choice}, Draw" if choice == computer_choice
  return "You: #{choice}, Computer: #{computer_choice}, Win" if choice == "Rock" && computer_choice == "Scissors"
  return "You: #{choice}, Computer: #{computer_choice}, Lose" if choice == "Rock" && computer_choice == "Paper"
  return "You: #{choice}, Computer: #{computer_choice}, Win" if choice == "Paper" && computer_choice == "Rock"
  return "You: #{choice}, Computer: #{computer_choice}, Lose" if choice == "Paper" && computer_choice == "Scissors"
  return "You: #{choice}, Computer: #{computer_choice}, Win" if choice == "Scissors" && computer_choice == "Paper"
  return "You: #{choice}, Computer: #{computer_choice}, Lose" if choice == "Scissors" && computer_choice == "Rock"
end

# Implement a Swingers game. 
# The method swingers should take an array of couple arrays and return the same type of data structure, 
# with the couples mixed up. Assume that the first item in the couple array is a man, and the second item is a woman.
# Don't pair a person with someone of their own gender (sorry to ruin your fun).
# Bonus problem: make a version of the swingers game that guarantees that all the couples end up with a different partner!

def swingers(couples)
  mixed_couples = []
  couples.length.times do
    mixed_couples << []
  end
  females_from_back = couples.length - 1
  females_from_front = 0
  couples.each_with_index do |couple, index|
    if index >= couples.length / 2
      mixed_couples[index][0] = couple[0]
      mixed_couples[index][1] = couples[females_from_front][1]
      females_from_front += 1
    else
      mixed_couples[index][0] = couple[0]
      mixed_couples[index][1] = couples[females_from_back][1]
      females_from_back -= 1
    end
    
  end
  mixed_couples
end

p swingers([
  ["Clyde", "Bonnie"],
  ["Paris", "Helen"],
  ["Romeo", "Juliet"]
])


















































