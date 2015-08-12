puts "hello World"

puts "How old are you?"
age = 0
age = gets.chomp.to_i

if age >= 21 
	puts "Let's get NASCAR drunk!"
elsif (age < 21) && (age != 18)
	puts "Do your parents even know you're here?"
elsif age = 18
	puts "Do you have a driver's license? Can I get a ride?"
end