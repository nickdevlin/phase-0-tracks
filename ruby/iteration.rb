def challenge53
	name1 = "Nick"
	name2 = "Kimberly"
	puts "Who is working on this project?"
	yield(name1, name2)
end

challenge53 { |name1, name2| puts "#{name1} and #{name2} are working diligently on this project."}

ceo = {'Twitter' => 'Jack Dorsey', 'Slack' => 'Stewart Butterfield', 'SpaceX' => 'Elon Musk'}

ceo.each do |company, executive|
	puts "#{executive} is the CEO of #{company}."
end

ceo = ['Jack Dorsey', 'Stewart Butterfield', 'Elon Musk']

puts "Original data:"
p ceo

ceo.map! do |executive|
	executive.next
end

puts "After .map call:"
p ceo

north_america = ["usa", "mexico", "canada", "dominican_republic"]

state_caps = {
	illinois: "springfield"
	california: "sacramento"
	texas: "austin"
	iowa: "des_moines"
}

north_america.map! do |country|
	puts country
	country.length < 6
end




