# ask for real name
# swap first and last name
# change vowels to next vowel in "aeiou" and all consonants to the next consonant in the alphabet

puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

first_letters = first_name.split('')
last_letters = last_name.split('')

first_letters.each do |jump|
	puts first_letters.next
end

def spy_first(first_name)
    vowels = "aeiou"
    consonants = "bcdfghjklmnpqrstvwxyz"
    i = 0 
    array = []
    value = ''
    length = first_name.length
        while i < length 
        a = first_letters[i].to_s
        value = first_letters.index(a)
        if value == 5
             array.push(vowels[0])
        else array.push(vowels[value+1])
        end
        i += 1
    end
    p array.join
end