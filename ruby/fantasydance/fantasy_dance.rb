class Dancer
	attr_accessor :age
	attr_reader :dancer

	def initialize(dancer, age)
		@dancer 	= "Misty Copeland"
		@age		= 33
	end

	def name
		@dancer
	end

	def age
		@age
	end

	def pirouette
		"*twirls*"
	end

	def bow
		"*bows*"
	end
end
