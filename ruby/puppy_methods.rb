class Puppy

  def initalize
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

pup = Puppy.new

pup1 = Puppy.new

pup2 = Puppy.new


pup.fetch("ball")

pup.speak(4)

pup.roll_over

puts pup.dog_years(5)

pup.play_dead("Leave my estate to my favorite offspring whose name is")





