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
sleep 1

# Titles
puts " "
puts "-----------------------------------------------------------------------------------------".blue
puts "-------------------------------- Test MUD, please Ignore --------------------------------".blue
puts "-----------------------------------------------------------------------------------------".blue
sleep 1
puts " "
sleep 1

# Welcome
puts "Welcome to a world without limits!"
sleep 2
puts "Except for the fact that there are only a few rooms to explore right now..."
sleep 2
puts "Still, lets get started."
sleep 2

# Questionnaire - Name
puts "First, what is your name?"
name = gets.chomp

# Blank field check.
while name == ""
	puts "Sorry what was that again? Names cannot be \[blank\]."
	name = gets.chomp
end
sleep 1
puts "-".yellow

# Correct name check.
puts "EXCELENT! Your name is \'#{name}\'! Is that correct?"
sleep 0.5
puts "Type \"yes\" if it is, or \"no\" to get another chance, and press enter"
name_correct = gets.chomp
sleep 1

if name_correct != "yes" || name_correct != "no"
	puts "Sorry, I didn't get that"
	sleep 3
	puts "Type \"yes\" if it is, or \"no\" to get another chance, and press enter"
	name_correct = gets.chomp
end

# Reset name loop.
while name_correct == "no"
	puts "Give it another go, What is your name?"
	name = gets.chomp
	puts "EXCELENT! Your name is now \'#{name}\'! Is that correct?"
	sleep 1
	puts "Type \"yes\" if it is, or \"no\" if it isn't, and press enter"
	name_correct = gets.chomp
end
puts "-".yellow
sleep 1

# Record and check age
puts "GREAT!"
sleep 1
puts "So, #{name}, what year were you born? Formate: \'xxxx\'"
sleep 1
puts "(This is important for strategic sheep purposes...)"
year = gets.chomp.to_i
age = 2015 - year # Calculate age
puts "-".yellow

# If user's age calculates to 0 or less or year calculates to 1000 or less.
while year >= current_year || year <= 1000
	puts "Are you sure to did that right?"
	sleep 1
	puts "Based on your answer you're #{age} years old..."
	sleep 1.5
	puts "Try entering your birth year again. Use 4 numbers \(ie. #{current_year}\)."
	year = gets.chomp.to_i
	age = 2015 - year
	puts "-".yellow
end

sleep 1.5

# If user's age is between 13 and 1
if year > current_year-13 && year < current_year
	puts "I'm SO glad to know you're getting into computers and coding at the ripe young age of #{age}."
	sleep 1.5
	puts "But, legally we have to ask that you talk to your parents first."
	sleep 1.5
	puts "Come back when you get their permission."
	sleep 1.5
	puts " "
	puts "-------------------------------------- END PROGRAM --------------------------------------".yellow
	puts " "

# If user's age is 13 or greater	
elsif year <= current_year-13
	puts "GREAT!"
	sleep 1
	puts "Now that we know you're #{age}."
	sleep 1
	puts "And old enough for this kind of stuff..."
	sleep 1
	puts "Allons-y! ~~~"
	sleep 1
end

# Start the Journey
puts "-".yellow
puts "so"
puts " "
sleep 1
puts "In front of you stands a very tall door. Not godly tall, but taller than a reasonable door should be."
sleep 3
puts "Looking at it you can tell it's old, made of wood, stained to a deep red brown, and finished with thick wrought iron bands."
sleep 3
puts "If a tall old door in the middle of nowhere wasn't weird enough, this door isn't being held up by anything."
sleep 3
puts "Like, nothing. Yeah, it's weird."
sleep 3
puts "There is nothing to the right or left. You can walk all the way around this door."
sleep 3
puts "both sides look exactly the same."
sleep 3
puts "At what seems a perfect height, on either side of this door, you find a well-worn but study handle."
sleep 1
puts "What would you like to do?"
sleep 1
puts "Grab the handle and \[o\]pen the door? or \[g\]o on your marry way?"
the_door = gets.chomp

if the_door =="o"
	sleep 1.5
	puts "You try to grab the handle and the door falls slowly forward, away from you."
	sleep 2
	puts "~ CRASH! ~"
	sleep 2
	puts "someone seriously put a lot of effort into getting that thing to stand up."
	sleep 3
	puts "You keep on walking through the woods."
	sleep 2
	puts "You can't exactly remember why you came out here in the first place..."
	sleep 3
	puts "OH WELL!"
	sleep 2
	puts " "
	puts "-------------------------------------- END PROGRAM --------------------------------------".yellow
	puts " "
elsif the_door == "g"
	sleep 1.5
	puts "You keep on walking!"
	sleep 2
	puts "You have to get home in time for afternoon tea!"
	sleep 2
	puts "If you're into that sort of thing..."
	sleep 2
	puts " "
	puts "-------------------------------------- END PROGRAM --------------------------------------".yellow
	puts " "
else 
	puts "I'm sorry I didn't catch that."
	puts "type \"o\" to open the door, or \"g\" to keep walking, and then press enter."
end

	

# --------------------------------------------------------------------------------------
# Useless Code
# --------------------------------------------------------------------------------------

=begin
	# This was originally how one was to navigate the "space" opting for something better.
	if the_door == "e"
		puts "welcome to your DEATH! MUAHAHAHAH! Ok not really...
		Actually well you're in the entrance hall, what would you like to do?
		You can go forward into the next room, turn left, or search the room."
		sleep 2
		puts "\"s\" for forward, \"l\" for left or \"s\" for search."
	elsif direction == "g"
		puts "have it your way then, but if you ever want to enter, just say the word."
		sleep 1
		puts "What do you want to do? type \"e\" to enter or type \"g\" to go away, and press enter."
		direction = gets.chomp
	end
=end

=begin
# This was supposed to be the help menu. It doesn't work.
if name == "help" || year == "help" || direction == "help" || name_correct == "help"
	puts "Nothing here yet, sorry"
	sleep 2
	puts "You're on your own"
end
=end
