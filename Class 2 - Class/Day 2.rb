=begin
	
Day 2

Mr. Blake
Co founder of scillicon Harlem
He is personally working on Augmented reality
Explaining what this inititive is with these three classes
Wants to offer more relevant courses on relevant frameworks (ie: ruby, python, node.js).
this series of courses is a pilot.
=end

#psudo code

#Exercise - hi low

# set a number
# Ask for the number
# Store that number in a variable
# Check to see if the number matches
# check if number is too hi or too low
# let user know if they have won.
# If they are wrong tell them if they are too hi or too low.
# tell them to guess again.

# require "pry"
# binding.pry

# set a number in a variable
winning_number = rand(1..100)

# Ask for the number
puts "guess a number between 1 and 100"

# Store that number in a variable
guessed_number = gets.chomp.to_i

# Check to see if the number matches
while (guessed_number != winning_number)

	# check if number is too hi or too low
	# If they are wrong tell them if they are too hi or too low.
	# tell them to guess again.
	if (guessed_number > winning_number) 
		puts "Too high my friend, try again."
		guessed_number = gets.chomp.to_i
	elsif (guessed_number < winning_number)
		puts "too low, too slow! try again."
		guessed_number = gets.chomp.to_i
	end
end

# Check to see if the number matches
# let user know if they have won.
if (guessed_number = winning_number)
	puts "YOU'RE CORRECT! Have a byte of a cookie, get it? Byte!"
end

=begin

user_wins = false

while user_wins != true
	guessed_number = gets.chomp.to_i
	if guessed_number = winning_number
		puts "You Win! You got it correct!"
	elsif 
	
=end