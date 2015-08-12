# Notes Day 1 - 2015-08-10

# Commented lines in ruby look like this.

=begin
Comment blocks in ruby look like this.
=end

# ruby is command line based

# cd - change directory
# dir - list all items in the current directory
# mkdir - make a folder

# Used cmd line to make a directory, and created a file in a specific directory

# used cmd line to run a ruby file.

# git status - get status of current repository
# git add - add uncommited files to repository
# git commit -am - add message to a commited file
# git add a - will add all files to current respository
# Covering github

# puts - Put String think println in javaScript

#Strings
#characters
puts "Hello World"
puts 'hello world'

#booleans
puts true
puts false

#numbers
puts 1
puts 100
puts 10000

#floats
num = 10.5

#objects

# ----------------------------------------------------------------------

#Exercise 1:
# Create a string with your name in it and print it to terminal
# Create variables for month date and reat and printthat to the termianl

#variables
name = "Max E."
month = 8
date = 10
year = 2015

puts "My name is #{name} and today's date is #{date}/#{month}/#{year}"

# ----------------------------------------------------------------------

#program control flow

=begin

name = gets.chomp

if name = "max"
	puts "found #{name}"
end
=end

# Loggical operators

=begin
== - Checks if true or false.
!= - if not equal to.
|| - "or" statement, typing out the word also works.
&& - "and" statment, typing out the word also works.
>  - greater than.
<  - less than.
<= - greater than or equal to.
>= - less than or equal to.
=end

# ----------------------------------------------------------------------

# Exercise two

# Create a program that asks what the users age is.
# If the user is under 21 tell them to go home.
# If they are oer the age of 21 tell them to go to the bar.
# bonus if they are 18 ask them if they can drive.

=begin

puts "How old are you?"
age = 0
age = gets.chomp.to_i

if (age >= 21) && (age != 18)
	puts "Let's get NASCAR drunk!"
elsif age < 21
	puts "Do your parents know you're here?"
elsif age = 18
	puts "You have a driver's license? Can I get a ride"
end

=end


# Extras

first_name = "Max"
last_name = "Wolf"

full_name ="#{first_name} #{last_name}"
full_name = first_name << last_name
puts full_name