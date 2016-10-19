class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	number.times {puts "Woof!"}
  end

end

Puppy.new.fetch("ball")

Puppy.new.speak(4)

