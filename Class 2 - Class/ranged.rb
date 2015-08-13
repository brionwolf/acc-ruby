require "pry"
# --------------------------------------------------------------------------------------
#ranges
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
#hashes
# --------------------------------------------------------------------------------------

=begin
######

myHash = {"jan" => "January", "Feb" => "February"}

puts myHash["Jan"]

myHash.each {|key,val| puts "#{key} and #{val}"}

=end
######

# --------------------------------------------------------------------------------------
#Hashes continued
# --------------------------------------------------------------------------------------

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

names_list = []


def add_name names_list,name
	names_list.push(name)
end

add_name names_list,"max"

puts names_list[0]




# --------------------------------------------------------------------------------------
# HOME WORK
# Create a few programs using arraysdand hashes
# But make sure to use methods we have no discussed (look up the ruby documentation)
# --------------------------------------------------------------------------------------