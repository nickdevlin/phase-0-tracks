class Puppy

  def initialize
  	puts "Initializing new puppy instance..."
  end 		

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	number.times {puts "Woof!"}
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(years)
  	years * 7
  end

  def play_dead(message)
  	puts "#{message}...*dying gasp* *rigor mortis sets in*"
  end

end

class Human

	def initialize
		puts "Here comes a new human."
	end

	def walk_around(distance)
		if distance > 3
			"I met my goal by walking #{distance} miles today."
		else 
			"I only walked #{distance} miles today. :("
		end
	end

	def walk_dog(dog, route)
		puts "I walked #{dog} down #{route} today."
	en
end

pup = Puppy.new

pup1 = Puppy.new

pup2 = Puppy.new


pup.fetch("ball")

pup.speak(4)

pup.roll_over

puts pup.dog_years(5)

pup.play_dead("Leave my estate to my favorite offspring whose name is")

people = []
50.times {people << Human.new}

people.each do |x|
	puts x.walk_around(5)
	x.walk_dog("Rufus", "Kedzie")	
end


