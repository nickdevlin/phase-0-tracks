class Santa
	attr_reader :age, :ethnicity, :reindeer_ranking
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initialize Santa instance..."
		@gender 			= gender
		@ethnicity			= ethnicity
		@reindeer_ranking	= ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age				= 0
	end

	def speak
		"Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		"That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)))
	end
end

kringle = Santa.new("female", "black")

p kringle.age
p kringle.celebrate_birthday
p kringle.age

p kringle.gender="genderfluid"

p kringle.ethnicity

kringle.get_mad_at("Vixen")

p kringle.reindeer_ranking
