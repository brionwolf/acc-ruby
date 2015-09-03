#  																				 ⧏⫷⦿⫸⧐
# --------------------------------------------------------------------------------------
#  	      +        ++++    ++++          ++++++   +     +  ++++++   +       +	 ⧏⫷⦿⫸⧐
#  	     + +      +       +              +     +  +     +  +     +    +   +		 ⧏⫷⦿⫸⧐
#  	    +   +    +       +       ======  ++++++   +     +  ++++++       +		 ⧏⫷⦿⫸⧐
#  	   +++++++    +       +              +    +   +     +  +     +    +			 ⧏⫷⦿⫸⧐
#  	  +       +    ++++    ++++          +     +   +++++   ++++++   +			 ⧏⫷⦿⫸⧐
# --------------------------------------------------------------------------------------
#  																				 ⧏⫷⦿⫸⧐



#  																				 ⧏⫷⦿⫸⧐
# --------------------------------------------------------------------------------------
# Day 1 - 2015-08-10 - git, command line, variables, logic
# --------------------------------------------------------------------------------------
# 																				 ⧏⫷⦿⫸⧐




# ---------------------------------------
# Commented lines in ruby look like this.
# ---------------------------------------

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

=begin

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

=end

# -------
# Objects
# -------

#Exercise 1:
# Create a string with your name in it and print it to terminal
# Create variables for month date and reat and printthat to the termianl


=begin

#variables
name = "Max E."
month = 8
date = 10
year = 2015

puts "My name is #{name} and today's date is #{date}/#{month}/#{year}"

=end

# --------------------
# Program control flow
# --------------------

=begin

name = gets.chomp

if name = "max"
	puts "found #{name}"
end
=end

# ------------------
# Loggical operators
# ------------------

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

# ------------
# Exercise two
# ------------

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

=begin

# Extras
first_name = "Max"
last_name = "Wolf"

full_name ="#{first_name} #{last_name}"
full_name = first_name << last_name
puts full_name

=end




#  																				 ⧏⫷⦿⫸⧐
# --------------------------------------------------------------------------------------
# Day 2 - Ranges, Arrays, Hashes, Symbols, and Methods
# --------------------------------------------------------------------------------------
# 																				 ⧏⫷⦿⫸⧐




# -----------------------------------------
# Pitch by Mr Blake from the Silicon Harlem
# -----------------------------------------

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

# ------------------
#Exercise 1 - hi low
# ------------------

# set a number
# Ask for the number
# Store that number in a variable
# Check to see if the number matches
# check if number is too hi or too low
# let user know if they have won.
# If they are wrong tell them if they are too hi or too low.
# tell them to guess again.

=begin

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

=end

# ---------------------------------
# Exercise 1 - hi low - Alternative
# ---------------------------------


=begin

user_wins = false

while user_wins != true
	guessed_number = gets.chomp.to_i
	if guessed_number = winning_number
		puts "You Win! You got it correct!"
	elsif 
	
=end

# ------
# Ranges
# ------

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

# -----------------------
# exercise 2 - data entry
# -----------------------

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

# -----------------------
#exercise 3 - more arrays
# -----------------------

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

# ------
# Hashes
# ------

# Like arrays Hashes, hold a number of items in "slots", but instead of being assiated with a number, each is associated with a "key" which can be vertually anything, like a variable.

=begin
######

myHash = {"jan" => "January", "Feb" => "February"}

puts myHash["Jan"]

myHash.each {|key,val| puts "#{key} and #{val}"}

=end
######

# ----------------
# Hashes continued
# ----------------

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


# -------
# Methods
# -------

# Methods in ruby look similar to functions, start by defining it with a name, add parameters, and then make it do a thing.

=begin

names_list = []

# define a method: def [method name] parameters1,parameters2,...
# parameters are defined there but act like variables IN the method.
def add_name names_list,name
	names_list.push(name)
end

add_name names_list,"max"

puts names_list[0]

=end

# ---------
# HOME WORK
# ---------

# Create a few programs using arraysdand hashes.
# But make sure to use methods we have no discussed (look up the ruby documentation).
# Create and add a method to the program.




#  																				 ⧏⫷⦿⫸⧐
# --------------------------------------------------------------------------------------
# Day 3 - Variables, ternary, methods, functions, classes, super classes
# --------------------------------------------------------------------------------------
# 																				 ⧏⫷⦿⫸⧐




# -----------
# definitions
# -----------

# $ = global variable
# @ = Class accessible variable

# def method_name (arguments,parameters)
# end

# Ternary
# variable1 [argument: ==, >=, >, etc...] variable2 ? "if true" : "if false"
# Same as:
=begin
$variable1
$variable2
if variable1 [argument: ==, >=, >, etc...] variable2
	"if true"
else
	"if false"
end

=end

# ---------------
# Classes example
# ---------------

=begin

# Underscore between words like variable names.
def longest_word
	words = ['apple','pear','banana','plum']
	longest_word = words.inject do |memo,word| 
		binding.pry
		memo.length > word.length ? memo : word # ternary - same as an if statement in one line.
	end
	puts longest_word
end
longest_word

# Method names can have question marks in them.
# Useful for tests and booleans.
def over_five?
	value = 3
	puts value > 5 ? 'over 5' : 'Not over 5'
end
over_five

=end

# -------
# Classes
# -------

# Class is a "type", and both are objects
=begin
class Animal
	def speak
		puts "speak"
	end
end
=end

=begin
class Animal
	def initialize
		speak
	end

	def speak
		puts "speak"
	end
end
=end

# Normally to run a class: new Animal
# in ruby: (sometimes calling it with a variable is helpful.)
# a = Animal.new
# a.speak

=begin
class Animal
	def initialize
		@greeting  = "Hello from Animal"
	end
	# :legs # is a property that cannot be accesses from outside the class or 
	# @legs = 2
	

	# attr_reader :legs
	# the above is the short version of what is below
	# def legs
	# 	@legs
	# end
	
	# attr_writer :legs
	# the above is the short version of what is below
	# def legs=(val)
	# 	@legs=val
	# end

	# Below is the short form of the long set of code above.
	attr_accessor :legs

	def speak
		puts @greeting
	end
end

a = Animal.new
a.legs = 4
puts a.legs
a.speak

class Lion < Animal
# class ClassName [less than symbol] InheritedClass
# Lion is now a sub class of Animal.
# Lion can access all methods in Animal.
# Animal cannot access any classes from Lion.
	def initialize
		@greeting = "Rawr!"
	end
end

l = Lion.new
l.speak

=end

# --------------------
# Exercise 1 - Classes
# --------------------

# create a person class
# Assign this person a job
# Create people with different job titles
# Allow people to change jobs

=begin

class Person
	attr_accessor :name
	attr_accessor :job

end

p1 = Person.new
p2 = Person.new
p3 = Person.new

p1.name = "Jim"
p1.job = "Plumber"
p2.name = "Bobby"
p2.job = "Flight Attendant"
p3.name ="Charlotte"
p3.job = "Web Developer"

puts " "
puts "#{p1.name} is a #{p1.job}, #{p1.name} is a #{p2.job}, and #{p3.name} is a #{p3.job}"
puts " "

=end

# --------------------------------
# Exercise 1 - Classes - Alternate
# --------------------------------

# create a person class
# Assign this person a job
# Create people with different job titles
# Allow people to change jobs

=begin

class Person
	attr_accessor :name
	attr_accessor :job

	def greeting
		puts "My name is #{@name}, and I'm a #{@job}"
	end
end

p1 = Person.new
p2 = Person.new
p3 = Person.new

p1.name = "Jim"
p1.job = "Plumber"
p2.name = "Bobby"
p2.job = "Flight Attendant"
p3.name ="Charlotte"
p3.job = "Web Developer"

puts p1.greeting
puts p2.greeting
puts p3.greeting

=end

# ----------------
# Method stringing
# ----------------

=begin

class Animal
	def initialize(name)
		@name = name
	end
	def show_name
		puts @name
	end
end
a = Animal.new("bobcat").show_name

=end

# -------------
# Super Classes
# -------------

=begin

class Tiger < Animal
	def show_name
		super
		puts @name
	end
end
t = Tiger.new("Tony").show_name

=end

# ---------------
# Super Continued
# ---------------

=begin

class Employee
	def create(name,desk)
		@name = ""
		@desk = ""
		add_perivilages(0)
	end
	def add_perivilages(perivilages)
		@perivilages = perivilages
	end
end

class Admin < Employee
	def create(name,desk)
		super
		add_perivilages(0)
	end
end

a.Admin.new

=end

# -------------
# Ruby on Rails
# -------------

# cd into local folder where you want to create the rails application
# Type in terminal: rails new app
# Type in terminal: cd app
# Type in terminal: rails s
# in browser type: localhost: 3000




#  																				 ⧏⫷⦿⫸⧐
# --------------------------------------------------------------------------------------
# Day 4 - Diving into Ruby on Rails
# --------------------------------------------------------------------------------------
# 																				 ⧏⫷⦿⫸⧐




# A long explaination of all the files in the app folder of our new rails app.

# ------------
# Made new app
# ------------

# $ rails new app_name # creates a new rails app with a given name.
# $ cd app_name # changes directory to the app that was just reacted
# $ rails server # starts the rails app in a local server

# --------------------------------
# in the app made a new controller
# --------------------------------

# rails generate controller name_of_controller
# rails g controller name_of_controller - will also work
# adding index to the end of the controller name will add a method to the controller file.

# To point your app to a new index instead of the default rails welcome page
# find the "routes.rb" file in the "config" folder, uncomment the "root" command and replace it with your own controller.

# --------------
# Making a Model
# --------------

# Methods allow your controller to communicate with the database.

# command: rails g model Name_of_model title:string description:text
# title and description are properties associated with our new model
# string and text define what type of information properties will hold.

# To "commit" the model
# $ rake
# $ db:migrate
# this commits any articles and creates a database.

# ------------------------
# rails c or rails console
# ------------------------

# irb:(main) allows you to interact with your database.


# ---------
# Home Work
# ---------

# Make an application, new controller, model, and post to a db, then post to the application.




#  																				 ⧏⫷⦿⫸⧐
# --------------------------------------------------------------------------------------
# Day 5 - RESET! lets start over making rails apps
# --------------------------------------------------------------------------------------
# 																				 ⧏⫷⦿⫸⧐




# ---------------------------------------------------------
# Alan - TA - Giving a quick overview of making a rails app
# ---------------------------------------------------------

# ----------------------------------------
# rails is known as an MVC coding language
# ----------------------------------------

# M - Models		- Receives directions from the controller to send information (if available) to the view.
# C - Controller	- Controls what you want to see, it's were you ask what you want to see.
# V - View 			- What you actually see.

# 				 Model (if needed)
# 						^
# Route --> Controller -⊥-> View --> Browser

# Opinion of the TA (Alan), routes file is the most important file in the app.

# --------------------------------------
# Basic Commands for a rails application
# --------------------------------------

# Create a new App - $ rails new app_name
# Create a new controller - $ rails g controller staticPages
# Create a new controller with methods - rails g controller controllerName methodName secondMethodName
# Start the rails server in and app - $ rails s


# ----------------------------------
# When looking at your new rails app
# ----------------------------------

# app (folder) - Everything related to the MVC frame work
# app/assets/ - images js, and css
# app_name/config - routes, initializers
# db - database
# Gemfile - all your gems

# --------------------
# Setting up a private 
# --------------------

# get 'what you will see in the url' => 'the actual path to the method'
# Example: 
# get 'about' => 'static_pages#about'




#  																				 ⧏⫷⦿⫸⧐
# --------------------------------------------------------------------------------------
# Day 6 - Twitter clone
# --------------------------------------------------------------------------------------
#  																				 ⧏⫷⦿⫸⧐




# Making a brand new twitter clone app.
# Calling mine "raven".
# Discuss briefly the yml file in configuration.
# discuss the importance of the .gitignore file.

# review creating an app
# $ rails new app_name
# $ rails g controller NewControllerNamePlurals newMethodName secondNewMethodName
# rails s

# _creates_a_partial.html.erb - creates a partial page

# in the layout application.html.erb file place the following tag to refer to the new partial.
# 	<%= render layouts/creates_a_partial %>

# Standard CRUD (Create Read Update Destroy) commands for rails
# Show, New, Edit, Create, Update, Destroy

# Colon before :this_is_a_Symbol
# Colon After  this_is_a_hook: 

#  																				 ⧏⫷⦿⫸⧐
# --------------------------------------------------------------------------------------
# Day 7 - Missed class for personal situation.
# --------------------------------------------------------------------------------------
# 																				 ⧏⫷⦿⫸⧐

#  																				 ⧏⫷⦿⫸⧐
# --------------------------------------------------------------------------------------
# Day 8 - Twitter Clone Continued
# --------------------------------------------------------------------------------------
# 																				 ⧏⫷⦿⫸⧐

# ------------
# Ruby in HTML
# ------------

# <%= stuff you want to redner to the page %>
# <% straight ruby code that will not render, think "end" tags %>

# ----------------------
# within the routes file
# ----------------------

# if You create a resource to a controller, you can delete the get commands, as they do the same thing.

# example:

# get 'caws/index'
# get 'caws/create'
# get 'caws/destroy'

# becomes:

# resources :caws, only:[:index,:create,:destroy]

# -------------------------
# User controller continued
# -------------------------

# rails generate controller controllerName modelName

# -----------------------------------
# jumping into the app/helpers folder
# -----------------------------------

# Using sessionHelper file to hand code an authentication system.
# a questionmark at the end of a method definition acts as an implicit if statement

# --------------
# suggested gems
# --------------

# Devise - authentication
# paperclip - image attachment gem
# service called: sendgrid, may have a gem.

# ------------------------------------
# Ruby Code - Hierarchy of abstraction
# ------------------------------------

# Module
# Class
# Method
# Variable

# ------
# Models
# ------

# create a model: $ rails g model NameOfModel attribute_name:data_type
# data types:
# floatstext
# string
# decimal
# integer
# datetime
# primary_key
# boolean
# timestamp
# time
# references
# binary
# date

