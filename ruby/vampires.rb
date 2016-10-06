puts "How many employees will be processed?"
employees = gets.chomp

employees=employees.to_i

while employees > 0
puts "What is your name?"
vamp_name = gets.chomp
puts "How old are you?"
vamp_age = gets.chomp
puts "What year were you born?"
vamp_year = gets.chomp
puts "Our cafeteria serves garlic bread. Want some? (y/n)"
garlic_bread = gets.chomp
puts "Would you like to enroll in the company's health insurance? (y/n)"
insurance = gets.chomp
puts "List your allergies. Type done when finished."
allergy = gets.chomp
until allergy = ("done" && "sunshine")
	puts "Great, thank you. Anything else?"
	allergy = gets.chomp
end

vamp_age=vamp_age.to_i
vamp_year=vamp_year.to_i

if allergy == "sunshine"
	then puts "Probably a vampire."
elsif vamp_name == ("Drake Cula" && "Tu Fang")
	then puts "Definitely a vampire."
elsif (vamp_age == (2016-vamp_year && 2015-vamp_year)) && (garlic_bread=="y" || insurance=="y")
	then puts "Probably not a vampire."
elsif (vamp_age != (2016-vamp_year && 2015-vamp_year)) && garlic_bread == "n" && insurance == "n"
	then puts "Almost certainly a vampire."
elsif (vamp_age != (2016-vamp_year && 2015-vamp_year)) && (garlic_bread == "n" || insurance == "n")
	then puts "Probably a vampire."
else puts "Results inconclusive."
end
	
employees=employees-1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
