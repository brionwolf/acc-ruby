# --------------------------------------------------------------------------------------
# Day 2 - Ranges, Arrays, Hashes, Symbols, and Methods
# --------------------------------------------------------------------------------------


# --------------------------------------------------------------------------------------
# Pitch by Mr Blake from the Silicon Harlem
# --------------------------------------------------------------------------------------

=begin

Mr. Blake
Co founder of Silicon Harlem
He is personally working on Augmented reality
Explaining what this initiative is with these three classes
Wants to offer more relevant courses on relevant frameworks (ie: ruby, python, node.js).
this series of courses is a pilot.
=end


# require "pry"
# binding.pry

#psudo code

# --------------------------------------------------------------------------------------
#Exercise 1 - hi low
# --------------------------------------------------------------------------------------


# set a number
# Ask for the number
# Store that number in a variable
# Check to see if the number matches
# check if number is too hi or too low
# let user know if they have won.
# If they are wrong tell them if they are too hi or too low.
# tell them to guess again.


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

# --------------------------------------------------------------------------------------
# Exercise 1 - hi low - Alternative
# --------------------------------------------------------------------------------------


=begin

user_wins = false

while user_wins != true
	guessed_number = gets.chomp.to_i
	if guessed_number = winning_number
		puts "You Win! You got it correct!"
	elsif 
	
=end

# --------------------------------------------------------------------------------------
# Ranges
# --------------------------------------------------------------------------------------

=begin
######

(1..10).each do |variable|
	binding.pry
	puts variable
end

names = ["bob","billy","jaquelin"]

ages [40,72,44,32,21]

things = [true,"Bill",object.new,Array.new(3)]

other_things = Array.new(3)

=end
######

# --------------------------------------------------------------------------------------
# exercise 2 - data entry
# --------------------------------------------------------------------------------------

=begin
######

# variables

names_list = []

# Creative a program that asks a user for 3 names.
# add those three names to an array: .push()
while names_list.length < 3
	if names_list.length < 1
		puts "list three(3) of your best friends! Please press the \"enter\/return\" key after each name."
	elsif (names_list.length > 0) && (names_list.length < 3)
		puts "Add another name, and press the \"enter\/return\" key"
	end
	name = gets.chomp
	names_list.push(name)
end

# bonus combine the 3 names from the array .join(" ")
# print out to the screen. 
puts "#{names_list.join(" ")} seem like great people!"

=end
######

# --------------------------------------------------------------------------------------
#exercise 3 - more arrays
# --------------------------------------------------------------------------------------

=begin
######

names = ["rai","test","fred"] # Create an array with strings in each slot.

puts names.include?("bill") # asking if the array includes the item in the ()
puts names.empty? # asking if the array is empty

names.each { |name| methode(name)}

puts names[0]

# Think "for" loops in js, for(names[i], names.length, i++){#Do a thing!}
# names.each { |var| puts var}
names.each do |var|
	if var == "rai"
		puts var
	else
		puts "everyone"
	end
end

=end
######

# --------------------------------------------------------------------------------------
# Hashes
# --------------------------------------------------------------------------------------

# Like arrays Hashes, hold a number of items in "slots", but instead of being assiated with a number, each is associated with a "key" which can be vertually anything, like a variable.

=begin
######

myHash = {"jan" => "January", "Feb" => "February"}

puts myHash["Jan"]

myHash.each {|key,val| puts "#{key} and #{val}"}

=end
######

# --------------------------------------------------------------------------------------
# Hashes continued
# --------------------------------------------------------------------------------------

# if you knowa key will never change, then it might be wise to use "symbols" to define each key. see below for the definition of a symbol.

=begin
######

# regular strings are mutible, meaning they can be changed and they don't have set memory allocation
name = "Aarai"
name << "Myers" # add to the current string

# symbols - thing strings that cannot be changed and do not take up extra computer memory.
key_name = :jan 

myHash = {:jan => "January", :feb => "February"}

puts myHash[:jan]

myHash.each {|key,val| puts "#{key} and #{val}"}

=end
######


# --------------------------------------------------------------------------------------
# Methods
# --------------------------------------------------------------------------------------

# Methods in ruby look similar to functions, start by defining it with a name, add parameters, and then make it do a thing.

names_list = []

# define a method: def [method name] parameters1,parameters2,...
# parameters are defined there but act like variables IN the method.
def add_name names_list,name
	names_list.push(name)
end

add_name names_list,"max"

puts names_list[0]

# --------------------------------------------------------------------------------------
# HOME WORK
# Create a few programs using arraysdand hashes.
# But make sure to use methods we have no discussed (look up the ruby documentation).
# Create and add a method to the program.
# --------------------------------------------------------------------------------------