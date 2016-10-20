class Santa
	attr_reader :ethnicity, :reindeer_ranking
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		puts "Initialize Santa instance..."
		@gender 			= gender
		@ethnicity			= ethnicity
		@age 				= 0
		@reindeer_ranking	= ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
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

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

50.times do |i|
	i = Santa.new(example_genders.sample, example_ethnicities.sample)
	i.age = rand(1..140)
	puts "This #{i.age}-year-old #{i.gender} Santa's ethnicity is #{i.ethnicity}."
end