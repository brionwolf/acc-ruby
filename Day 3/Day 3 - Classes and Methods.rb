# Day 3 - 


# --------------------------------------------------------------------------------------
# definitions
# --------------------------------------------------------------------------------------

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

require "pry"


# --------------------------------------------------------------------------------------
# Classes example
# --------------------------------------------------------------------------------------

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

# --------------------------------------------------------------------------------------
# Classes
# --------------------------------------------------------------------------------------

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

# --------------------------------------------------------------------------------------
# Exercise 1 - Classes
# --------------------------------------------------------------------------------------

# create a person class
# Assign this person a job
# Create people with different job titles
# Allow people to change jobs

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

# --------------------------------------------------------------------------------------
# Exercise 1 - Classes - Alternate
# --------------------------------------------------------------------------------------

# create a person class
# Assign this person a job
# Create people with different job titles
# Allow people to change jobs

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

# --------------------------------------------------------------------------------------
# Method stringing.
# --------------------------------------------------------------------------------------


class Animal
	def initialize(name)
		@name = name
	end
	def show_name
		puts @name
	end
end
a = Animal.new("bobcat").show_name

# --------------------------------------------------------------------------------------
# Super
# --------------------------------------------------------------------------------------

class Tiger < Animal
	def show_name
		super
		puts @name
	end
end
t = Tiger.new("Tony").show_name

# --------------------------------------------------------------------------------------
# Super Continued
# --------------------------------------------------------------------------------------

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

# --------------------------------------------------------------------------------------
# Ruby on Rails
# --------------------------------------------------------------------------------------

# cd into local folder where you want to create the rails application
# Type in terminal: rails new app
# Type in terminal: cd app
# Type in terminal: rails s
# in browser type: localhost: 3000