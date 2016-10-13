# collect interior design data
# convert data into correct format, when necessary
# print back to screen
# ask user if they'd like to update

design_answers = {}

puts "What is your name?"
client_name = gets.chomp
puts "How old are you?"
client_age = gets.chomp
puts "How many children do you have?"
client_kids = gets.chomp
puts "Do you have a preferred design style? (y/n)"
client_style = gets.chomp
puts "Would you like to change any of your information?"
change = gets.chomp
if change == "none"
	puts "Sounds great."
else puts "What would you like to change it to?"
new_design = gets.chomp
design_answers[change.to_sym] = new_design
end

# not working when i make a change. i originally had line 22 at line 41 instead, with other design answers, and it worked if a change was made, but if I didn't, it showed up in the hash anyway, which is obviously no bueno.

client_age = client_age.to_i
client_kids = client_kids.to_i

if client_style == "y"
	client_style == true
else client_style == false
end

#not sure why this isn't working for the boolean

design_answers[:client_name] = client_name
design_answers[:client_age] = client_age
design_answers[:client_kids] = client_kids
design_answers[:client_style] = client_styl

p design_answers