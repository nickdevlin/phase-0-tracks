def how_old?(age)
 	if age == ""
 	return "unknown."
 	else 
 	return "#{age}."
end
end

def adoptable?(adoption)
 	if adoption == "y"
 	return ""
 	elsif adoption == "n"
 	return "not "
end
end

def get_hamster_data
 	puts "What is the hamster's name?"
 	hamster_name = gets.chomp
 	puts "What is the volume level? (from 1 to 10)"
 	volume = gets.chomp
 	puts "What color is its fur?"
 	fur_color = gets.chomp
 	puts "Is the hamster a good candidate for adoption? (y/n)"
 	adoption = gets.chomp
 	puts "About how old is the hamster?"
 	age = gets.chomp
 	puts "The hamster's name is #{hamster_name}. Its volume level is #{volume}. Its color is #{fur_color}. It is #{adoptable?(adoption)}a good candidate for adoption. The hamster's age is #{how_old?(age)}"
end

get_hamster_data