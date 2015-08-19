puts "hello World"

puts "How old are you?"
age = 0
age = gets.chomp.to_i

if (age >= 21)
	puts "Let's get NASCAR drunk!"
elsif (age < 21) && (age != 18)
	puts "Do your parents know you're here?"
elsif age = 18
	puts "You have a driver's license? Can I get a ride"
end