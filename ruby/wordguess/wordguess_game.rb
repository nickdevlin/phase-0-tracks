class Wordguess
	attr_accessor :word_letters, :guess_count, :used, :guesses

	def initialize
		@word_letters = []
		@used		= []
		@guess_count = 0
	end

	def take_letter
		word_letters = gets.chomp.chars
		guess_blanks = []
		guesses = word_letters.length
		guesses.times do 
			guess_blanks << "_"
		end
	end


end

puts "Welcome to WordGuess!"
game = Wordguess.new

puts "Enter the word to be guessed."
game.take_letter

until game.guess_count > (guesses * 2) or guess_blanks.include?("_") == false
	puts "Guess a letter."
		letter = gets.chomp
		guess_index = word_letters.index letter
		used_index = game.used.index letter
		if used_index != nil
			puts "You already guessed that, silly! Try again."
		elsif guess_index != nil
			game.guess_count += 1
			game.used << letter
			guess_blanks.delete_at(guess_index.to_i)
			guess_blanks.insert(guess_index.to_i, letter)
			puts "You got one!"
			puts guess_blanks.join
		else puts "Nope, sorry!"
			game.guess_count += 1
			game.used << letter
			puts guess_blanks.join
		end
end

if guess_blanks.include?("_") == false
	puts "You win! Congratulations!"
else puts "You lose! Sorry you're so bad."
end	

#  or 



# puts "You have #{word_lett"

# until game.guess_count > (word_letters.length * 2)
#	puts "Guess a letter."
#	guess_count += 1

#end




#when guess count > 2 * length, player loses

# if array contains guessed letter, return an array 

