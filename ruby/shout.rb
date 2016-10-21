module Shout
	def yell_angrily(words)
		puts words + "!!!" + " :("
		#removed "self." to create mixin version
	end

	def yell_happily(words)
		puts words + " :)))))))))"
	end
end


#create two classes to include Shout module
class Cubs_fan
	include Shout
	# added include line to point to module
end

class Dodgers_fan
	include Shout
end

gocubs = Cubs_fan.new
gocubs.yell_happily("The Cubs are going to win tomorrow")

boododgers = Dodgers_fan.new
boododgers.yell_angrily("The Dodgers smell of butt and will probably lose tomorrow")