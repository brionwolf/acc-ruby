# Ruby Homework 1 due Monday August 17, 2015

# --------------------------------------------------------------------------------------
# HOME WORK
# Create a few programs using arrays and hashes.
# But make sure to use methods we have no discussed (look up the ruby documentation).
# Create and add a method to the program.
# --------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------
# Ideas
# --------------------------------------------------------------------------------------

=begin
######

1. Command line based game involving many if else statements
	- How can it involve a method?

2. A ruby based notes application.

3. A program that calculates how long until your birthday


=end
######

# Going with the Command line game solution.

# --------------------------------------------------------------------------------------
# Setup Game
# --------------------------------------------------------------------------------------

# require "pry"
# binding.pry

require "colorize"

# Global Variables
$name = "nobody"
$year = 2015
$age
current_year = Time.new.year

puts "-------------------------------------- LOAD PROGRAM -------------------------------------".yellow
sleep(1)

# Titles
puts " "
puts "-----------------------------------------------------------------------------------------".yellow
puts "-------------------------------- Test MUD, please Ignore --------------------------------".yellow
puts "-----------------------------------------------------------------------------------------".yellow
sleep(1)
puts " "
sleep(1)

# Welcome
puts "Welcome to a world without limits!"
sleep(2)
puts "Except for the fact that there are only a few rooms to explore right now..."
sleep(2)
puts "Still, lets get started."
sleep(2)

# Questionnaire - Name
puts "First, what is your name?"
name = gets.chomp

# Blank field check.
while name == ""
	puts "Sorry what was that again? Names cannot be \[blank\]."
	name = gets.chomp
end
sleep(1)

# Correct name check.
puts "EXCELENT! Your name is \'#{name}\'! Is that correct?"
puts "Type \"yes\" if it is, or \"no\" to get another chance, and press enter"
name_correct = gets.chomp
sleep(1)

# Reset name loop.
while name_correct == "no"
	puts "Give it another go, What is your name?"
	name = gets.chomp
	puts "EXCELENT! Your name is now \'#{name}\'! Is that correct?"
	sleep(1)
	puts "Type \"yes\" if it is, or \"no\" if it isn't, and press enter"
	name_correct = gets.chomp
end
puts " "
sleep(1)

# Record and check age
puts "GREAT!"
sleep(1)
puts "So, #{name}, what year were you born?"
sleep(1)
puts "(This is important for strategic sheep purposes...)"
year = gets.chomp.to_i
age = 2015 - year # Calculate age
sleep(1.5)

# If user's age calculates to 0 or less.
if year >= current_year
	puts "I don't even know how you're using a computer right now."
	sleep(1.5)
	puts "It's like you were born yesterday!"
	sleep(1.5)
	puts "How is that possible?!"
	sleep(1.5)
	puts "Do we need to call Dr. Kinder from BabyCo?"
	sleep(2)
	puts "..."
	sleep(1.5)
	puts "Sorry, bad joke."
	sleep(1.5)
	puts "Restart the program and try again you must have made a mistake in entering your birth year."
	sleep(3)
	puts " "
	puts "-------------------------------------- END PROGRAM --------------------------------------".yellow
	puts " "

# If user's age is between 13 and 1
elsif year > current_year-13 && year < current_year
	puts "glad to know you're getting into computers and coding at the ripe young age of #{age}."
	puts "But, legally we have to ask that you talk to your parents first."
	puts "Come back when you get their permission."
	puts " "
	puts "-------------------------------------- END PROGRAM --------------------------------------".yellow
	puts " "
	
# If user's age is 13 or greater	
elsif year <= current_year-13
	puts "Glad to know you're #{age}, let's move on!"
	sleep(2)
	puts "Now that we know you're old enough for this kind of stuff..."
	sleep(1)
	puts "Lets get on with all this!"
	sleep(1)
	puts " "
	puts "so"
	puts " "
	sleep(1)
	puts "In front of you stands a very tall door. Not godly tall, but taller than a reasonable door should be.
	Looking at it you can tell it's old, made of wood, stained to a deep red brown, and finished with thick wrought iron bands.
	If a tall old door in the middle of nowhere wasn't weird enough, this door isn't being held up by anything.
	There is nothing to the right or left. You can walk all the way around this door. both sides look exactly the same.
	At what seems a perfect height, on either side of this door you find a well worn but study handle."
	puts "type \"e\" to enter or type \"g\" to go away, and press enter."
	
	direction = gets.chomp
	
	if direction == "e"
		puts "welcome to your DEATH! MUAHAHAHAH! Ok not really...
		Actually well you're in the entrance hall, what would you like to do?
		You can go forward into the next room, turn left, or search the room."
		sleep(2)
		puts "\"s\" for forward, \"l\" for left or \"s\" for search."
	end
	
	if direction == "g"
		puts "have it your way then, but if you ever want to enter, just say the word."
		sleep(1)
		puts "What do you want to do? type \"e\" to enter or type \"g\" to go away, and press enter."
		direction = gets.chomp
	end
end

if name == "help" || year == "help" || direction == "help" || name_correct == "help"
	puts "Nothing here yet, sorry"
	sleep(2)
	puts "You're on your own"
end