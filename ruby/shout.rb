module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + " :)))))))))"
	end
end

p Shout.yell_angrily("Dag nabbit")

p Shout.yell_happily("Cubs win")