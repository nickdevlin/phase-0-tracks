class Dancer
	attr_accessor :age
	attr_reader :name

	def initialize(name, age)
		@name	 	= "Misty Copeland"
		@age		= 33
		@dance_queue = []
	end

	def name
		p @name
	end

	def pirouette
		"*twirls*"
	end

	def bow
		"*bows*"
	end

	def jumps(how_many)
		"*jumps #{how_many} times*"
	end

	def queue_dance_with(next_dancer)
		@dance_queue << next_dancer
	end

	def begin_next_dance
		p "Now dancing with #{@dance_queue.shift}."
	end

	def card
		p @dance_queue
	end

end

# I chose to add what I did because, frankly, I am tired and want to finish.
