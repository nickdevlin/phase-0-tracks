class Dancer
	attr_accessor :age
	attr_reader :dancer

	def initialize(dancer_name, age)
		@dancer 	= dancer_name
		@age		= age
	end

	def name
		p dancer
	end

	def age
		p age
	end
end
