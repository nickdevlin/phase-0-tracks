class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender 			= gender
		@ethnicity			= ethnicity
		#@reindeer_ranking	= ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age				= 0
	end

	def speak
		"Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		"That was a good #{cookie_type}!"
	end
end

kringle = Santa.new

p kringle.speak

p kringle.eat_milk_and_cookies("oatmeal raisin")

all_santas = []

possible_genders = ["female", "male", "genderfluid", "agender"]
possible_ethnicities = ["black", "Chinese", "Maldovan", "Argentine"]

possible_genders.length.times do |i|
	all_santas << Santa.new(possible_genders[i], possible_ethnicities[i])
end

p all_santas
